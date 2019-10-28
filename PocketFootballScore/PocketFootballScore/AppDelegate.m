//
//  AppDelegate.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 com. All rights reserved.
//

#import "AppDelegate.h"
#import "PFLoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Bmob registerWithAppKey:@"7981ca212772a9ef8ace8f55d4620ff8"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PFScoreAD"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[array lastObject] objectForKey:@"PFScoreAD"]]];
            self.window.rootViewController = [self rootController];
            [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
    BmobUser *bUser = [BmobUser currentUser];
    if (bUser) {
//        进行操作
        PFTabBarController *tabVC = [PFTabBarController shareInstance];
        return tabVC;
    }else{
        //对象为空时，可打开用户注册界面
        PFLoginViewController *loginVC = [PFLoginViewController shareInstance];
        return loginVC;
    }
}
@end
