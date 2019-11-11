//
//  AppDelegate.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/14.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AppDelegate.h"
#import "GALoginViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Bmob resetDomain:@"http://gamealert.jd127.cn"];
    [Bmob registerWithAppKey:@"16b349e4eb3b7e001d4d3d938fe21ba3"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"GAgameRemind"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[array lastObject] objectForKey:@"GAgameRemind"]]];
            self.window.rootViewController = [self rootController];
            [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
    BmobUser *bUser = [BmobUser currentUser];
    if (bUser) {
//        进行操作
        GATabBarController *tabVC = [GATabBarController shareInstance];
        return tabVC;
    }else{
        //对象为空时，可打开用户注册界面
        GALoginViewController *loginVC = [GALoginViewController shareInstance];
        return loginVC;
    }
}
@end
