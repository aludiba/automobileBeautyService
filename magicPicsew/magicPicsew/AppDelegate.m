//
//  AppDelegate.m
//  magicPicsew
//
//  Created by 123 on 2020/10/29.
//

#import "AppDelegate.h"
#import "MPPermissionsManager.h"
#import "MPMainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self MProotController];
    [self.window makeKeyAndVisible];
    
    NSString *MPidfa = [self MPrequestTrackingIDFA];
    NSLog(@"idfa:%@",MPidfa);
    return YES;
}
- (UIViewController *)MProotController{
    MPBaseViewController *MPHomeVC = [[MPMainViewController alloc] init];
    UINavigationController *MPMainVC = [[UINavigationController alloc] initWithRootViewController:MPHomeVC];
    return MPMainVC;
}
- (NSString *)MPrequestTrackingIDFA{
    __block NSString *MPidfa = @"";
    [MPPermissionsManager MPtraceTransparencyPermissionManagement:^(BOOL MPisTraceTransparency, ATTrackingManagerAuthorizationStatus MPstatus, ASIdentifierManager * _Nonnull MPmanager) {
        if (MPisTraceTransparency) {
            if (MPstatus == ATTrackingManagerAuthorizationStatusAuthorized) {
                MPidfa = [[MPmanager advertisingIdentifier] UUIDString];
            }
        }else{
            if ([MPmanager isAdvertisingTrackingEnabled]) {
                MPidfa = [[MPmanager advertisingIdentifier] UUIDString];
            }
        }
    }];
    return MPidfa;
}
@end
