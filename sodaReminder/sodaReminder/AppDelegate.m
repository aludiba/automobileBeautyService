//
//  AppDelegate.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/14.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AppDelegate.h"
#import "SOLoginViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Bmob resetDomain:@"http://sodaReminder.jd127.cn"];
    [Bmob registerWithAppKey:@"b54db1ee77e5cdf960d6818559aee34f"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"SOsodaRemind"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[array lastObject] objectForKey:@"SOsodaRemind"]]];
            self.window.rootViewController = [self rootController];
            [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
    BmobUser *bUser = [BmobUser currentUser];
    if (bUser) {
//        进行操作
        SOTabBarController *tabVC = [SOTabBarController shareInstance];
        return tabVC;
    }else{
        //对象为空时，可打开用户注册界面
        SOLoginViewController *loginVC = [SOLoginViewController shareInstance];
        return loginVC;
    }
}
@end
