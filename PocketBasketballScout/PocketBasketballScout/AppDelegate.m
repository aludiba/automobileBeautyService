//
//  AppDelegate.m
//  PocketScout
//
//  Created by bykj on 2019/11/4.
//  Copyright © 2019 com. All rights reserved.
//

#import "AppDelegate.h"
#import "BTLoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bmob resetDomain:@"http://pocketfootballscout.jd127.cn"];
    [Bmob registerWithAppKey:@"3b32beaaae004285519d31da13844710"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"BTPocketScout"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[array lastObject] objectForKey:@"BTPocketScout"]]];
            self.window.rootViewController = [self rootController];
            [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
//    BmobUser *bUser = [BmobUser currentUser];
//    if (bUser) {
//        进行操作
        BTTabBarController *tabVC = [BTTabBarController shareInstance];
        return tabVC;
//    }else{
//        //对象为空时，可打开用户注册界面
//        YBLoginViewController *loginVC = [YBLoginViewController shareInstance];
//        return loginVC;
//    }
}
@end
