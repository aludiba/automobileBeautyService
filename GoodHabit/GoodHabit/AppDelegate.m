//
//  AppDelegate.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "AppDelegate.h"
#import "PHLoginViewController.h"
#import "PHGuideViewController.h"
#import "PHTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Bmob resetDomain:@"http://goodhabit.jd127.cn"];
    [Bmob registerWithAppKey:@"df039ce9ff6f2311d96e0abed1cfb43b"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PHPocketHabits"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [PHNDHTTPClient PHgetURLStringNoHUD:[[array lastObject] objectForKey:@"PHPocketHabits"] withParam:nil withSuccessBlock:^(id data) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[(NSDictionary *)data objectForKey:@"Url"]]];
            } withErrorBlock:^(NSError *error, id errorData) {
               
            }];
           self.window.rootViewController = [self rootController];
           [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
    BmobUser *bUser = [BmobUser currentUser];
    if (bUser) {
        //进行操作
        PHTabBarViewController *tabVC = [PHTabBarViewController PHshareInstance];
        return tabVC;
    }else{
        //对象为空时，可打开用户注册界面
        PHLoginViewController *loginVC = [PHLoginViewController PHshareInstance];
        return loginVC;
    }
}
@end
