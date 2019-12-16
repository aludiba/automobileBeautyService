//
//  AppDelegate.m
//  ConvenientFootballScore
//
//  Created by bykj on 2019/12/16.
//  Copyright © 2019 com. All rights reserved.
//

#import "AppDelegate.h"
#import "CFLoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bmob resetDomain:@"http://convenientscore.jd127.cn"];
    [Bmob registerWithAppKey:@"3b32beaaae004285519d31da13844710"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"CFScore"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[array lastObject] objectForKey:@"CFScore"]]];
            self.window.rootViewController = [self rootController];
            [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
//    BmobUser *bUser = [BmobUser currentUser];
//    if (bUser) {
//        进行操作
        CFTabBarController *tabVC = [CFTabBarController shareInstance];
        return tabVC;
//    }else{
//        //对象为空时，可打开用户注册界面
//        YBLoginViewController *loginVC = [YBLoginViewController shareInstance];
//        return loginVC;
//    }
}

@end
