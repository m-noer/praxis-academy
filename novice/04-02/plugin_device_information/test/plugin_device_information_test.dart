import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_device_information/plugin_device_information.dart';

void main() {
  const MethodChannel channel = MethodChannel('plugin_device_information');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PluginDeviceInformation.platformVersion, '42');
  });
}
