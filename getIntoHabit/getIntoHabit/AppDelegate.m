//
//  AppDelegate.m
//  getIntoHabit
//
//  Created by user on 2020/7/16.
//  Copyright © 2020 chu. All rights reserved.
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
    self.window.rootViewController = [self CDrootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (UIViewController *)CDrootController{
    AVUser *CDUser = [AVUser currentUser];
    if (CDUser) {
        //进行操作
        CDTabBarViewController *CDtabVC = [CDTabBarViewController CDshareInstance];
        return CDtabVC;
    }else{
        //对象为空时，可打开用户注册界面
        CDLoginViewController *CDloginVC = [CDLoginViewController CDshareInstance];
        return CDloginVC;
    }
}
@end
