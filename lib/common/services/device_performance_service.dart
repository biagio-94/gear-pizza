import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:gearpizza/common/utils/devices_list.dart';

enum DevicePerformance { low, medium, high }

class DevicePerformanceService {
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  Future<DevicePerformance> getDevicePerformance() async {
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      return _classifyAndroid(info);
    } else if (Platform.isIOS) {
      final info = await _deviceInfo.iosInfo;
      return _classifyIOS(info);
    }
    return DevicePerformance.medium;
  }

  DevicePerformance _classifyAndroid(AndroidDeviceInfo info) {
    final String model = info.model.toLowerCase();

    for (final entry in modelPerformanceOverrides.entries) {
      if (model.contains(entry.key)) {
        debugPrint("entry.key ${entry.key}");
        return entry.value;
      }
    }

    // Fallback: uso cores/API/ABI se non riconosciuto
    final int cores = Platform.numberOfProcessors;
    final int sdkInt = info.version.sdkInt;
    final bool is64bit = info.supportedAbis.any((a) =>
        a.toLowerCase().contains('arm64') ||
        a.toLowerCase().contains('x86_64'));

    if (cores < 6 || sdkInt < 24) return DevicePerformance.low;
    if ((cores == 6 || cores == 7) && sdkInt <= 28) {
      return DevicePerformance.low;
    }
    if (cores >= 10 && sdkInt >= 30) return DevicePerformance.high;
    if (cores == 8 && sdkInt >= 33) return DevicePerformance.high;
    if (is64bit && cores >= 8 && sdkInt >= 30) return DevicePerformance.medium;
    if (cores >= 8 && sdkInt < 30) return DevicePerformance.medium;
    return DevicePerformance.medium;
  }

  DevicePerformance _classifyIOS(IosDeviceInfo info) {
    final String model = info.utsname.machine.toLowerCase();

    // 1) Provo a individuare modello nella mappa di override iOS
    for (final entry in iosModelPerformanceOverrides.entries) {
      if (model.startsWith(entry.key)) {
        return entry.value;
      }
    }

    // 2) Se non trovato nella mappa, uso un fallback sulla versione di iOS
    final int majorVer = int.tryParse(info.systemVersion.split('.').first) ?? 0;
    // I dispositivi iOS non riconosciuti specificamente, li classifichiamo in base alla versione di iOS:
    if (majorVer >= 16) {
      return DevicePerformance.high;
    } else if (majorVer >= 13) {
      return DevicePerformance.medium;
    } else {
      return DevicePerformance.low;
    }
  }
}
