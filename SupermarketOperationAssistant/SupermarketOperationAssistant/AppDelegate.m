//
//  AppDelegate.m
//  超市运营助手
//
//  Created by 褚红彪 on 2020/5/8.
//  Copyright © 2020 hb. All rights reserved.
//

#import "AppDelegate.h"
#import "EBTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.EBwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.EBwindow.backgroundColor = [UIColor whiteColor];
    self.EBwindow.rootViewController = [self EBrootController];
    [self.EBwindow makeKeyAndVisible];
    return YES;
}
- (UIViewController *)EBrootController{
        EBTabBarController *EBtabVC = [EBTabBarController EBshareInstance];
        return EBtabVC;
}
@end
