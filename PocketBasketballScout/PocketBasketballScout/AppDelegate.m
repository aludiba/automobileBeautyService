//
//  AppDelegate.m
//  PocketScout
//
//  Created by bykj on 2019/11/4.
//  Copyright © 2019 com. All rights reserved.
//

#import "AppDelegate.h"
#import "CBSLoginViewController.h"
#import "CBSNDHTTPClient.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [Bmob resetDomain:@"http://convenientscore.jd127.cn"];
//    [Bmob registerWithAppKey:@"3b32beaaae004285519d31da13844710"];
    [AVOSCloud setApplicationId:@"mG34aYISSTic5qVtir31dM6N-MdYXbMMI" clientKey:@"oLHtnYLqrERW7UvQ3UcnA3O5"];
    [AVOSCloud setAllLogsEnabled:YES];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self rootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    NSString *URL = @"http://mock-api.com/Rz3yVMnM.mock/CBSBasketball";
    [CBSNDHTTPClient CBSgetURLStringNoHUD:URL withParam:nil withSuccessBlock:^(id data) {
            NSArray *arr = (NSArray *)data;
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[arr lastObject]]];
        } withErrorBlock:^(NSError *error, id errorData) {
            
        }];
}
- (UIViewController *)rootController{
        //进行操作
        CBSTabBarController *tabVC = [CBSTabBarController shareInstance];
        return tabVC;
}
@end
