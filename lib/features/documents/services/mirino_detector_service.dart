// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as image_lib;
import 'package:gearpizza/common/utils/image_utils.dart';
import 'package:gearpizza/features/documents/model/mirino_recognition_model.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

// The following MirinoDetector example works by spawning a background isolate and
// communicating with it over Dart's SendPort API. It is presented below as a
// demonstration of the feature "Background Isolate Channels" and shows using
// plugins from a background isolate. The [MirinoDetector] operates on the root
// isolate and the [_MirinoDetectorServer] operates on a background isolate.
//
// Here is an example of the protocol they use to communicate:
//
//  _________________                         ________________________
//  [:MirinoDetector]                               [:_MirinoDetectorServer]
//  -----------------                         ------------------------
//         |                                              |
//         |<---------------(init)------------------------|
//         |----------------(init)----------------------->|
//         |<---------------(ready)---------------------->|
//         |                                              |
//         |----------------(detect)--------------------->|
//         |<---------------(busy)------------------------|
//         |<---------------(result)----------------------|
//         |                 . . .                        |
//         |----------------(detect)--------------------->|
//         |<---------------(busy)------------------------|
//         |<---------------(result)----------------------|
//
///////////////////////////////////////////////////////////////////////////////

/// All the command codes that can be sent and received between [MirinoDetector] and
/// [_MirinoDetectorServer].
enum _Codes {
  init,
  busy,
  ready,
  detect,
  result,
}

/// A command sent between [MirinoDetector] and [_MirinoDetectorServer].
class _Command {
  const _Command(this.code, {this.args});

  final _Codes code;
  final List<Object>? args;
}

/// A Simple MirinoDetector that handles object detection via Service
///
/// All the heavy operations like pre-processing, detection, ets,
/// are executed in a background isolate.
/// This class just sends and receives messages to the isolate.
class MirinoDetector {
  final String modelPath;
  final String labelPath;

  MirinoDetector._(this.modelPath, this.labelPath, this._isolate,
      this._interpreter, this._labels);

  final Isolate _isolate;
  late final Interpreter _interpreter;
  late final List<String> _labels;

  // To be used by detector (from UI) to send message to our Service ReceivePort
  late final SendPort _sendPort;

  bool _isReady = false;

  // // Similarly, StreamControllers are stored in a queue so they can be handled
  // // asynchronously and serially.
  final StreamController<Map<String, dynamic>> resultsStream =
      StreamController<Map<String, dynamic>>();

  /// Open the database at [path] and launch the server on a background isolate..
  static Future<MirinoDetector> start(
      String modelPath, String labelPath) async {
    final ReceivePort receivePort = ReceivePort();
    final Isolate isolate =
        await Isolate.spawn(_MirinoDetectorServer._run, receivePort.sendPort);

    final MirinoDetector result = MirinoDetector._(
      modelPath,
      labelPath,
      isolate,
      await _loadModel(modelPath),
      await _loadLabels(labelPath),
    );
    receivePort.listen((message) {
      result._handleCommand(message as _Command);
    });
    return result;
  }

  static Future<Interpreter> _loadModel(String modelPath) async {
    final interpreterOptions = InterpreterOptions();
    if (Platform.isAndroid) {
      interpreterOptions.addDelegate(XNNPackDelegate());
    }
    return Interpreter.fromAsset(
      modelPath,
      options: interpreterOptions..threads = 4,
    );
  }

  static Future<List<String>> _loadLabels(String labelPath) async {
    return (await rootBundle.loadString(labelPath)).split('\n');
  }

  /// Starts CameraImage processing
  void processFrame(CameraImage cameraImage) {
    if (_isReady) {
      _sendPort.send(_Command(_Codes.detect, args: [cameraImage]));
    }
  }

  /// Handler invoked when a message is received from the port communicating
  /// with the database server.
  void _handleCommand(_Command command) {
    switch (command.code) {
      case _Codes.init:
        _sendPort = command.args?[0] as SendPort;
        // ----------------------------------------------------------------------
        // Before using platform channels and plugins from background isolates we
        // need to register it with its root isolate. This is achieved by
        // acquiring a [RootIsolateToken] which the background isolate uses to
        // invoke [BackgroundIsolateBinaryMessenger.ensureInitialized].
        // ----------------------------------------------------------------------
        RootIsolateToken rootIsolateToken = RootIsolateToken.instance!;
        _sendPort.send(_Command(_Codes.init, args: [
          rootIsolateToken,
          _interpreter.address,
          _labels,
        ]));
      case _Codes.ready:
        _isReady = true;
      case _Codes.busy:
        _isReady = false;
      case _Codes.result:
        _isReady = true;
        resultsStream.add(command.args?[0] as Map<String, dynamic>);
      default:
        debugPrint('MirinoDetector unrecognized command: ${command.code}');
    }
  }

  /// Kills the background isolate and its detector server.
  void stop() {
    _isolate.kill();
  }
}

/// The portion of the [MirinoDetector] that runs on the background isolate.
///
/// This is where we use the new feature Background Isolate Channels, which
/// allows us to use plugins from background isolates.
class _MirinoDetectorServer {
  /// Input size of image (height = width = 300)
  static const int mlModelInputSize = 512;

  /// Result confidence threshold
  static const double confidence = 0.7;
  Interpreter? _interpreter;
  List<String>? _labels;

  _MirinoDetectorServer(this._sendPort);

  final SendPort _sendPort;

  // ----------------------------------------------------------------------
  // Here the plugin is used from the background isolate.
  // ----------------------------------------------------------------------

  /// The main entrypoint for the background isolate sent to [Isolate.spawn].
  static void _run(SendPort sendPort) {
    ReceivePort receivePort = ReceivePort();
    final _MirinoDetectorServer server = _MirinoDetectorServer(sendPort);
    receivePort.listen((message) async {
      final _Command command = message as _Command;
      await server._handleCommand(command);
    });
    // receivePort.sendPort - used by UI isolate to send commands to the service receiverPort
    sendPort.send(_Command(_Codes.init, args: [receivePort.sendPort]));
  }

  /// Handle the [command] received from the [ReceivePort].
  Future<void> _handleCommand(_Command command) async {
    switch (command.code) {
      case _Codes.init:
        // ----------------------------------------------------------------------
        // The [RootIsolateToken] is required for
        // [BackgroundIsolateBinaryMessenger.ensureInitialized] and must be
        // obtained on the root isolate and passed into the background isolate via
        // a [SendPort].
        // ----------------------------------------------------------------------
        RootIsolateToken rootIsolateToken =
            command.args?[0] as RootIsolateToken;
        // ----------------------------------------------------------------------
        // [BackgroundIsolateBinaryMessenger.ensureInitialized] for each
        // background isolate that will use plugins. This sets up the
        // [BinaryMessenger] that the Platform Channels will communicate with on
        // the background isolate.
        // ----------------------------------------------------------------------
        BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
        _interpreter = Interpreter.fromAddress(command.args?[1] as int);
        _labels = command.args?[2] as List<String>;
        _sendPort.send(const _Command(_Codes.ready));
      case _Codes.detect:
        _sendPort.send(const _Command(_Codes.busy));
        _convertCameraImage(command.args?[0] as CameraImage);
      default:
        debugPrint(
            '_MirinoDetectorService unrecognized command ${command.code}');
    }
  }

  void _convertCameraImage(CameraImage cameraImage) {
    var preConversionTime = DateTime.now().millisecondsSinceEpoch;

    convertCameraImageToImage(cameraImage).then((image) {
      if (image != null) {
        int width = image.width;
        int height = image.height;

        // Se l'immagine è più alta che larga (padding sui lati + rotazione)
        if (width < height) {
          int padVal = ((height - width) / 2).round();
          image = image_lib.copyCrop(image,
              x: 0, y: padVal, width: width, height: height - 2 * padVal);

          // Ridimensiona a mlModelInputSize e ruota di 90 gradi
          image = image_lib.copyResize(image,
              width: mlModelInputSize, height: mlModelInputSize);
          image = image_lib.copyRotate(image, angle: 90);
        }
        // Se l'immagine è più larga che alta (padding sopra e sotto)
        else {
          int padVal = ((width - height) / 2).round();
          image = image_lib.copyCrop(image,
              x: padVal, y: 0, width: width - 2 * padVal, height: height);

          // Ridimensiona a mlModelInputSize senza rotazione
          image = image_lib.copyResize(image,
              width: mlModelInputSize, height: mlModelInputSize);
        }

        final results = analyseImage(image, preConversionTime);
        _sendPort.send(_Command(_Codes.result, args: [results]));
      }
    });
  }

  Map<String, dynamic> analyseImage(
      image_lib.Image image, int preConversionTime) {
    // Preprocessa l'immagine applicando la normalizzazione
    final imageMatrix = List.generate(
      mlModelInputSize,
      (y) => List.generate(
        mlModelInputSize,
        (x) {
          final pixel = image.getPixel(x, y);
          return [
            (pixel.r / 255.0 - 0.485) / 0.229,
            (pixel.g / 255.0 - 0.456) / 0.224,
            (pixel.b / 255.0 - 0.406) / 0.225,
          ];
        },
      ),
    );

    var preProcessElapsedTime =
        DateTime.now().millisecondsSinceEpoch - preConversionTime;

    // Invia l'immagine preprocessata al modello per l'inferenza
    var inferenceTimeStart = DateTime.now().millisecondsSinceEpoch;
    final output = _runInference(imageMatrix);

    var inferenceElapsedTime =
        DateTime.now().millisecondsSinceEpoch - inferenceTimeStart;
    var totalElapsedTime =
        DateTime.now().millisecondsSinceEpoch - preConversionTime;

    return {
      "recognitions": _processOutput(output), // Elabora i risultati
      "stats": <String, String>{
        'Conversion time:': preProcessElapsedTime.toString(),
        'Inference time:': inferenceElapsedTime.toString(),
        'Total prediction time:': totalElapsedTime.toString(),
      },
    };
  }

  List<List<num>> _runInference(List<List<List<num>>> imageMatrix) {
    final input = [
      imageMatrix
    ]; // Input adattato alla nuova dimensione [1, 512, 512, 3]
    final output = [
      List<num>.filled(_labels!.length, 0)
    ]; // Probabilità per ciascuna classe

    _interpreter!.run(input, output);

    return output;
  }

  List<MirinoRecognition> _processOutput(List<List<num>> output) {
    debugPrint("Processed output: $output");
    final List<MirinoRecognition> recognitions = [];
    for (int i = 0; i < output.first.length; i++) {
      if (output.first[i] > confidence) {
        recognitions.add(MirinoRecognition(
          i,
          _labels![i],
          output.first[i].toDouble(),
        ));
      }
    }
    return recognitions;
  }
}
