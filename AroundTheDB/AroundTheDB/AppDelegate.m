//
//  AppDelegate.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/12.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "AppDelegate.h"
#import "ABTabBarViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [ABTabBarViewController shareInstance];
    [self.window makeKeyAndVisible];
    return YES;
}
@end
