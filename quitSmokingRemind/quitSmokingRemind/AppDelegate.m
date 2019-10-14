//
//  AppDelegate.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/14.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AppDelegate.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bmob registerWithAppKey:@"bae3af210cf8c975d4dfc342ee0e79a3"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self rootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (UIViewController *)rootController{
//    BmobUser *bUser = [BmobUser currentUser];
//    if (bUser) {
//        进行操作
        QSTabBarController *tabVC = [QSTabBarController shareInstance];
        return tabVC;
//    }else{
//        //对象为空时，可打开用户注册界面
//        WALoginViewController *loginVC = [WALoginViewController shareInstance];
//        return loginVC;
//    }
}
@end
