#import "DzExpressPlugin.h"
#if __has_include(<dz_express/dz_express-Swift.h>)
#import <dz_express/dz_express-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dz_express-Swift.h"
#endif

@implementation DzExpressPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDzExpressPlugin registerWithRegistrar:registrar];
}
@end
