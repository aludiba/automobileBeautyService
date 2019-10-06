//
//  AppDelegate.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AppDelegate.h"
#import "WALoginViewController.h"
#import "WATabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bmob registerWithAppKey:@"a9c594114abe62d6277a00efe6616470"];
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
        WATabBarController *tabVC = [WATabBarController shareInstance];
        return tabVC;
    }else{
        //对象为空时，可打开用户注册界面
        WALoginViewController *loginVC = [WALoginViewController shareInstance];
        return loginVC;
    }
}
@end
