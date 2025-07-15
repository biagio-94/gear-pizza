import 'package:device_info_plus/device_info_plus.dart';

Future<bool> isPhysicalDevice() async {
  final deviceInfo = DeviceInfoPlugin();
  final androidInfo = await deviceInfo.androidInfo;
  return androidInfo.isPhysicalDevice;
}
