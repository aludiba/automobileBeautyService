#import "AppDelegate.h"
#import "LCDMIBaseNavigationC.h"
#import "LCDMIHomeVC.h"
#import "LCDMIBaseTabBarVC.h"
@interface AppDelegate ()
@end
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.backgroundColor = UIColor.whiteColor;
    LCDMIBaseTabBarVC * baserVC = [[LCDMIBaseTabBarVC alloc] init];
    self.window.rootViewController = baserVC;
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application {
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:^(){
        NSLog(@"程序关闭");
    }];
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
}
- (void)applicationWillTerminate:(UIApplication *)application {
}
@end
