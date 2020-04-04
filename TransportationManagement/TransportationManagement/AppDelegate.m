//
//  AppDelegate.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [AVOSCloud setApplicationId:@"0megPo6oNflIXCj8bD4SRf1Q-MdYXbMMI" clientKey:@"LLplbKahwrEobgRWQnDW5Y6H"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self rootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (UIViewController *)rootController{
        KATabBarController *tabVC = [KATabBarController KAshareInstance];
        return tabVC;
}
@end
