//
//  AppDelegate.m
//  PocketScout
//
//  Created by bykj on 2019/11/4.
//  Copyright © 2019 com. All rights reserved.
//

#import "AppDelegate.h"
#import "CVSLoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bmob resetDomain:@"http://pocketvolleyballscore.jd127.cn"];
    [Bmob registerWithAppKey:@"433c78f96a4eadc43adb74cef6a27b92"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self rootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"CVSScout"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[array lastObject] objectForKey:@"CVSScout"]]];
    }];
}
- (UIViewController *)rootController{
        CVSTabBarController *tabVC = [CVSTabBarController shareInstance];
        return tabVC;
}
@end
