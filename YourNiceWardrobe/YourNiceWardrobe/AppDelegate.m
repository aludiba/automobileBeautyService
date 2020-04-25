//
//  AppDelegate.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/24.
//  Copyright © 2020 hb. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self rootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (UIViewController *)rootController{
        BCTabBarController *BCtabVC = [BCTabBarController BCshareInstance];
        return BCtabVC;
}
@end
