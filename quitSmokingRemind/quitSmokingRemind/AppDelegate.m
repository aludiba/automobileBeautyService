//
//  AppDelegate.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/14.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AppDelegate.h"
#import "QSLoginViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Bmob registerWithAppKey:@"bae3af210cf8c975d4dfc342ee0e79a3"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"QSSmokeRemind"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[array lastObject] objectForKey:@"QSSmokeRemind"]]];
            self.window.rootViewController = [self rootController];
            [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
    BmobUser *bUser = [BmobUser currentUser];
    if (bUser) {
//        进行操作
        QSTabBarController *tabVC = [QSTabBarController shareInstance];
        return tabVC;
    }else{
        //对象为空时，可打开用户注册界面
        QSLoginViewController *loginVC = [QSLoginViewController shareInstance];
        return loginVC;
    }
}
@end
