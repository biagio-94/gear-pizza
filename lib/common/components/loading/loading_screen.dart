import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:gearpizza/common/components/loading/loading_screen_controller.dart';

class LoadingScreen {
  factory LoadingScreen() => _shared;
  static final LoadingScreen _shared = LoadingScreen._sharedInstance();
  LoadingScreen._sharedInstance();

  LoadingScreenController? controller;

  void show({
    required BuildContext context,
    required String text,
    required bool showLogoAnimation,
  }) {
    controller?.close();
    controller = showOverlay(
      context: context,
      text: text,
      showLogoAnimation: showLogoAnimation,
    );
  }

  void hide() {
    if (controller != null) {
      controller?.close();
      controller = null;
      debugPrint("Overlay rimosso");
    }
  }

  LoadingScreenController showOverlay({
    required BuildContext context,
    required String text,
    required bool showLogoAnimation,
  }) {
    final newStream = StreamController<String>();
    final state = Overlay.of(context);
    final size = MediaQuery.of(context).size;

    final overlay = showLogoAnimation
        ? OverlayEntry(
            builder: (context) {
              return Material(
                child: Center(
                  child: SizedBox(
                    width: size.width,
                    height: size.height,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10),
                          Lottie.asset(
                            'assets/animations/loadingAnimation.json',
                            width: size.width * 0.8,
                          ),
                          const SizedBox(height: 20),
                          StreamBuilder<String>(
                            stream: newStream.stream,
                            builder: (context, snapshot) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  snapshot.data ?? text,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        : OverlayEntry(
            builder: (context) {
              return Material(
                color: Colors.black.withAlpha(150),
                child: Center(
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: size.width * 0.8,
                      maxHeight: size.height * 0.8,
                      minWidth: size.width * 0.5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 10),
                            CircularProgressIndicator(
                              color: Theme.of(context).primaryColor,
                            ),
                            const SizedBox(height: 20),
                            StreamBuilder<String>(
                              stream: newStream.stream,
                              builder: (context, snapshot) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 10),
                                  child: Text(
                                    snapshot.data ?? text,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );

    state.insert(overlay);

    return LoadingScreenController(
      close: () {
        newStream.close();
        overlay.remove();
        return true;
      },
      update: (text) {
        newStream.add(text);
        return true;
      },
    );
  }
}
