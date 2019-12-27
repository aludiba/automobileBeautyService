//
//  AppDelegate.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "AppDelegate.h"
#import "PLNLoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bmob resetDomain:@"http://goodhabit.jd127.cn"];
    [Bmob registerWithAppKey:@"df039ce9ff6f2311d96e0abed1cfb43b"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PLNVictory"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[array lastObject] objectForKey:@"PLNVictory"]]];
            self.window.rootViewController = [self rootController];
            [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
        //进行操作
        PLNTabBarController *tabVC = [PLNTabBarController shareInstance];
        return tabVC;
}
@end
