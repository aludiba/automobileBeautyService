//
//  AppDelegate.m
//  magicPicsew
//
//  Created by 123 on 2020/10/29.
//

#import "AppDelegate.h"
#import "MPMainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self MProotController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (UIViewController *)MProotController{
    MPBaseViewController *MPHomeVC = [[MPMainViewController alloc] init];
    UINavigationController *MPMainVC = [[UINavigationController alloc] initWithRootViewController:MPHomeVC];
    return MPMainVC;
}
@end
