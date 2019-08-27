package com.example.system_android;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

  private static final String CHANNEL = "samples.flutter.io/device";

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);

    new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                new MethodChannel.MethodCallHandler() {
                    @Override
                    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
    // Note: this method is invoked on the main thread.
    if (call.method.equals("getAndroidSystem")) {
        String deviceInformation = getAndroidSystem();

        if (deviceInformation != null) {
            result.success(deviceInformation);
        } else {
            result.error("UNAVAILABLE", "not available.", null);
        }
    } else {
        result.notImplemented();
    }
}
                });

  }

  private String getAndroidSystem() {
    String s="Debug-infos:";
    s += "\n OS Version: " + System.getProperty("os.version") + "(" + android.os.Build.VERSION.INCREMENTAL + ")";
    s += "\n OS API Level: " + android.os.Build.VERSION.SDK_INT;
    s += "\n Device: " + android.os.Build.DEVICE;
    s += "\n Model (and Product): " + android.os.Build.MODEL + " ("+ android.os.Build.PRODUCT + ")";
    return s;
  }
}
