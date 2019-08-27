import 'dart:async';

import 'package:flutter/services.dart';

class PluginDeviceInformation {
  static const MethodChannel _channel =
      const MethodChannel('plugin_device_information');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
