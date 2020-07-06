//
//  AppDelegate.m
//  MacroSports
//
//  Created by user on 2020/6/30.
//  Copyright © 2020 macro. All rights reserved.
//

#import "AppDelegate.h"
#import "LBHomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.LBwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.LBwindow.backgroundColor = [UIColor whiteColor];
    self.LBwindow.rootViewController = [self LBrootController];
    [self.LBwindow makeKeyAndVisible];
    return YES;
}
- (UIViewController *)LBrootController{
    LBHomeViewController *LBHomeVC = [[LBHomeViewController alloc] init];
    UINavigationController *LBMainVC = [[UINavigationController alloc] initWithRootViewController:LBHomeVC];
    return LBMainVC;
}
@end
