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
    self.MPwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.MPwindow.backgroundColor = [UIColor whiteColor];
    self.MPwindow.rootViewController = [self MProotController];
    [self.MPwindow makeKeyAndVisible];
    return YES;
}
- (UIViewController *)MProotController{
    MPBaseViewController *MPHomeVC = [[MPMainViewController alloc] init];
    UINavigationController *MPMainVC = [[UINavigationController alloc] initWithRootViewController:MPHomeVC];
    return MPMainVC;
}
@end
