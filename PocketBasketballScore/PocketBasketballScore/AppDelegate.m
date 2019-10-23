//
//  AppDelegate.m
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/22.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AppDelegate.h"
#import "PBTabBarController.h"
#import "PBLoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bmob registerWithAppKey:@"70724917a25832e836932c80ff0995a5"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self rootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (UIViewController *)rootController{
    BmobUser *bUser = [BmobUser currentUser];
    if (bUser) {
//        进行操作
        PBTabBarController *tabVC = [PBTabBarController shareInstance];
        return tabVC;
    }else{
        //对象为空时，可打开用户注册界面
        PBLoginViewController *loginVC = [PBLoginViewController shareInstance];
        return loginVC;
    }
}
@end
