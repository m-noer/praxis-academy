#import "PluginDeviceInformationPlugin.h"
#import <plugin_device_information/plugin_device_information-Swift.h>

@implementation PluginDeviceInformationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginDeviceInformationPlugin registerWithRegistrar:registrar];
}
@end
