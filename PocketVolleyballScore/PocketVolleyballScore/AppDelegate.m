//
//  AppDelegate.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 com. All rights reserved.
//

#import "AppDelegate.h"
#import "PVLoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Bmob registerWithAppKey:@"433c78f96a4eadc43adb74cef6a27b92"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PVScoreAD"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[array lastObject] objectForKey:@"PVScoreAD"]]];
            self.window.rootViewController = [self rootController];
            [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
//    BmobUser *bUser = [BmobUser currentUser];
//    if (bUser) {
//        进行操作
        PVTabBarController *tabVC = [PVTabBarController shareInstance];
        return tabVC;
//    }else{
//        //对象为空时，可打开用户注册界面
//        PVLoginViewController *loginVC = [PVLoginViewController shareInstance];
//        return loginVC;
//    }
}
@end
