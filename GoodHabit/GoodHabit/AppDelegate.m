//
//  AppDelegate.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "AppDelegate.h"
#import "CDLoginViewController.h"
#import "CDGuideViewController.h"
#import "CDTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [AVOSCloud setApplicationId:@"mG34aYISSTic5qVtir31dM6N-MdYXbMMI" clientKey:@"oLHtnYLqrERW7UvQ3UcnA3O5"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    AVQuery *bquery = [AVQuery queryWithClassName:@"CDPocketHabits"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        
           self.window.rootViewController = [self rootController];
           [self.window makeKeyAndVisible];
    }];
    return YES;
}
- (UIViewController *)rootController{
    AVUser *bUser = [AVUser currentUser];
    if (bUser) {
        //进行操作
        CDTabBarViewController *tabVC = [CDTabBarViewController CDshareInstance];
        return tabVC;
    }else{
        //对象为空时，可打开用户注册界面
        CDLoginViewController *loginVC = [CDLoginViewController CDshareInstance];
        return loginVC;
    }
}
@end
