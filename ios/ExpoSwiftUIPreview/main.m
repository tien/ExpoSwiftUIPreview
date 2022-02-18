#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "ExpoSwiftUIPreview-Swift.h"

int main(int argc, char * argv[]) {
  @autoreleasepool {
    bool isPreview = [NSProcessInfo.processInfo.environment[@"XCODE_RUNNING_FOR_PREVIEWS"] isEqualToString:@"1"];
    NSString *appDelegate = isPreview ? NSStringFromClass([PreviewAppDelegate class]) : NSStringFromClass([AppDelegate class]);
    return UIApplicationMain(argc, argv, nil, appDelegate);
  }
}
