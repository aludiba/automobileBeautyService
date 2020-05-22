//
//  AppDelegate.m
//  超市运营助手
//
//  Created by 褚红彪 on 2020/5/8.
//  Copyright © 2020 hb. All rights reserved.
//

#import "AppDelegate.h"
#import "Reachability.h"
#import "EBTabBarController.h"
#import <SafariServices/SafariServices.h>

@interface AppDelegate ()
@property(nonatomic,strong)Reachability *EBhostReah;
@property(nonatomic,assign)NetworkStatus EBstatus;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [AVOSCloud setApplicationId:@"tx1s7sLytcOjvdhlTSYTyvah-MdYXbMMI" clientKey:@"nFq2uoXE8w4OjEzI2yomLohK"];
    self.EBwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.EBwindow.backgroundColor = [UIColor whiteColor];
    self.EBwindow.rootViewController = [self EBrootController];
    [self.EBwindow makeKeyAndVisible];
    //开启网络状况的监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(EBreachabilityChanged:)name:kReachabilityChangedNotification object:nil];
    Reachability *EBreach = [Reachability reachabilityWithHostName:@"www.apple.com"];
    [EBreach startNotifier];
    //开始监听，会启动一个runloop
    [self.EBhostReah startNotifier];
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
     Boolean EBisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"EBisNet"];
    if (EBisNet) {
    AVQuery *EBbquery = [AVQuery queryWithClassName:@"EBSupermarketOperationAssistant"];
    [EBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        NSDictionary *EBDic = (NSDictionary *)[array firstObject];
        NSString *EBstring = [EBDic objectForKey:@"SupermarketOperationAssistant"];
        NSString *EBstring1 = [EBDic objectForKey:@"SupermarketOperationAssistant1"];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:EBstring] options:@{} completionHandler:nil];
        if (EBstring1.length) {
        SFSafariViewController *EBsafariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:EBstring1]];
        [EBKeyWindow.rootViewController presentViewController:EBsafariVC animated:YES completion:nil];
        }
    }];
    }
}
-(void)EBreachabilityChanged:(NSNotification *)EBnotification{
    Reachability *EBreach = [EBnotification object];
    if([EBreach isKindOfClass:[Reachability class]]){
        NetworkStatus EBstatus = [EBreach currentReachabilityStatus];
        //如果网络状态发生改变
        if (EBstatus != self.EBstatus) {
            //记录当前网络状态
            self.EBstatus = EBstatus;
            [MBProgressHUD EBshowReminderText:[self EBisInternetWith:EBstatus]];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                   AVQuery *EBbquery = [AVQuery queryWithClassName:@"EBSupermarketOperationAssistant"];
                   [EBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                       Boolean EBisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"EBisNet"];
                       if (!EBisNet) {
                           NSDictionary *EBDic = (NSDictionary *)[array firstObject];
                           NSString *EBstring = [EBDic objectForKey:@"SupermarketOperationAssistant"];
                           NSString *EBstring1 = [EBDic objectForKey:@"SupermarketOperationAssistant1"];
                           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:EBstring] options:@{} completionHandler:nil];
                           if (EBstring1.length) {
                           SFSafariViewController *EBsafariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:EBstring1]];
                           [EBKeyWindow.rootViewController presentViewController:EBsafariVC animated:YES completion:nil];
                           }
                           [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"EBisNet"];
                           [NSUserDefaults.standardUserDefaults synchronize];
                       }
                   }];
                });
        }
    }
}
- (NSString*)EBisInternetWith:(NetworkStatus)EBstatus{
    switch (EBstatus) {
        case NotReachable:
            return NSLocalizedString(@"暂无网络", nil);
            break;
        case ReachableViaWiFi:
            return NSLocalizedString(@"WIFI上网", nil);
            break;
        case ReachableViaWWAN:
            return NSLocalizedString(@"移动上网", nil);
            break;
        default:
            break;
    }
}
- (UIViewController *)EBrootController{
        EBTabBarController *EBtabVC = [EBTabBarController EBshareInstance];
        return EBtabVC;
}
@end
