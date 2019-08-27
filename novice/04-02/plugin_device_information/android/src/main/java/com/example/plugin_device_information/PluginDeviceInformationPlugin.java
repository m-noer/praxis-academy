package com.example.plugin_device_information;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** PluginDeviceInformationPlugin */
public class PluginDeviceInformationPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "plugin_device_information");
    channel.setMethodCallHandler(new PluginDeviceInformationPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getPlatformVersion")) {
      result.success("Android Version: Android " + android.os.Build.VERSION.RELEASE + "\nOS Version:" + System.getProperty("os.version") + "(" + android.os.Build.VERSION.INCREMENTAL + ")" + "\nOS API Level: " + android.os.Build.VERSION.SDK_INT + "\nDevice: " + android.os.Build.DEVICE + "\nModel (and Product): " + android.os.Build.MODEL + " ("+ android.os.Build.PRODUCT + ")");
    } else {
      result.notImplemented();
    }
  }
}
