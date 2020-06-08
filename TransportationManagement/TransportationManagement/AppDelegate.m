//
//  AppDelegate.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
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
@property(nonatomic,strong)Reachability *BGhostReah;
@property(nonatomic,assign)NetworkStatus BGstatus;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setJPush:launchOptions];
    [AVOSCloud setApplicationId:@"H15qlfDi1SLCxryYbbjf7snN-MdYXbMMI" clientKey:@"nVywofsCh2sUR6MVqbIhRQnt"];
    self.BGwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.BGwindow.backgroundColor = [UIColor whiteColor];
    self.BGwindow.rootViewController = [self rootController];
    [self.BGwindow makeKeyAndVisible];
    //开启网络状况的监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(BGreachabilityChanged:)name:kReachabilityChangedNotification object:nil];
    Reachability *BGreach = [Reachability reachabilityWithHostName:@"www.apple.com"];
    [BGreach startNotifier];
    //开始监听，会启动一个runloop
    [self.BGhostReah startNotifier];
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    Boolean BGisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"BGisNet"];
       if (BGisNet) {
       AVQuery *BGbquery = [AVQuery queryWithClassName:@"BGimmediateTransportManagement"];
       [BGbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
           NSDictionary *BGDic = (NSDictionary *)[array firstObject];
           NSString *BGstring = [BGDic objectForKey:@"immediateTransportManagement"];
           NSString *BGstring1 = [BGDic objectForKey:@"immediateTransportManagement1"];
           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:BGstring] options:@{} completionHandler:nil];
           if (BGstring1.length) {
           SFSafariViewController *BGsafariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:BGstring1]];
           [BGKeyWindow.rootViewController presentViewController:BGsafariVC animated:YES completion:nil];
           }
       }];
       }
}
-(void)BGreachabilityChanged:(NSNotification *)BGnotification{
    Reachability *BGreach = [BGnotification object];
    if([BGreach isKindOfClass:[Reachability class]]){
        NetworkStatus BGstatus = [BGreach currentReachabilityStatus];
        //如果网络状态发生改变
        if (BGstatus != self.BGstatus) {
            //记录当前网络状态
            self.BGstatus = BGstatus;
            [MBProgressHUD BGshowReminderText:[self BGisInternetWith:BGstatus]];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                   AVQuery *BGbquery = [AVQuery queryWithClassName:@"BGimmediateTransportManagement"];
                   [BGbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                       Boolean BGisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"BGisNet"];
                       if (!BGisNet) {
                           NSDictionary *BGDic = (NSDictionary *)[array firstObject];
                           NSString *BGstring = [BGDic objectForKey:@"immediateTransportManagement"];
                           NSString *BGstring1 = [BGDic objectForKey:@"immediateTransportManagement1"];
                           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:BGstring] options:@{} completionHandler:nil];
                           if (BGstring1.length) {
                           SFSafariViewController *BGsafariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:BGstring1]];
                           [BGKeyWindow.rootViewController presentViewController:BGsafariVC animated:YES completion:nil];
                           }
                           [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"BGisNet"];
                           [NSUserDefaults.standardUserDefaults synchronize];
                       }
                   }];
                });
        }
    }
}
- (NSString*)BGisInternetWith:(NetworkStatus)BGstatus{
    switch (BGstatus) {
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
        BGTabBarController *tabVC = [BGTabBarController BGshareInstance];
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
    [JPUSHService setupWithOption:launchOptions appKey:@"c00ad4276a0c550f3ef3e5bd"
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
