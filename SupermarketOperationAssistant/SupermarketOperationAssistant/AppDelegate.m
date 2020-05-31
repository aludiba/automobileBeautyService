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
#import "JPUSHService.h"
#ifdef NSFoundationVersionNumber_iOS_9_x_Max
#import <UserNotifications/UserNotifications.h>
#endif
#import <AdSupport/AdSupport.h>
@interface AppDelegate ()<JPUSHRegisterDelegate,JPUSHGeofenceDelegate>
@property(nonatomic,strong)Reachability *EBhostReah;
@property(nonatomic,assign)NetworkStatus EBstatus;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self EBsetJPush:launchOptions];
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
- (void)EBsetJPush:(NSDictionary *)EBlaunchOptions{
    //Required
    //notice: 3.0.0 及以后版本注册可以这样写，也可以继续用之前的注册方式
    JPUSHRegisterEntity *EBentity = [[JPUSHRegisterEntity alloc] init];
    EBentity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound|JPAuthorizationOptionProvidesAppNotificationSettings;
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        // 可以添加自定义 categories
        // NSSet<UNNotificationCategory *> *categories for iOS10 or later
        // NSSet<UIUserNotificationCategory *> *categories for iOS8 and iOS9
    }
    [JPUSHService registerForRemoteNotificationConfig:EBentity delegate:self];
    
    // Optional
    // 获取 IDFA
    // 如需使用 IDFA 功能请添加此代码并在初始化方法的 advertisingIdentifier 参数中填写对应值
    NSString *EBadvertisingId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    // Required
    // init Push
    // notice: 2.1.5 版本的 SDK 新增的注册方法，改成可上报 IDFA，如果没有使用 IDFA 直接传 nil
    [JPUSHService setupWithOption:EBlaunchOptions appKey:@"16ec53a211596c03d56ee0f3"
                          channel:@"App Store"
                 apsForProduction:1];
}
#pragma mark- JPUSHRegisterDelegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)EBdeviceToken{
    // Required - 注册 DeviceToken
    [JPUSHService registerDeviceToken:EBdeviceToken];
}
// iOS 12 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center openSettingsForNotification:(UNNotification *)EBnotification{
    if (EBnotification && [EBnotification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        //从通知界面直接进入应用
    }else{
        //从通知设置界面进入应用
    }
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)EBnotification withCompletionHandler:(void (^)(NSInteger))completionHandler {
    // Required
    NSDictionary *EBuserInfo = EBnotification.request.content.userInfo;
    if([EBnotification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:EBuserInfo];
    }
    completionHandler(UNNotificationPresentationOptionAlert); // 需要执行这个方法，选择是否提醒用户，有 Badge、Sound、Alert 三种类型可以选择设置
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)EBresponse withCompletionHandler:(void (^)())completionHandler {
    // Required
    NSDictionary *EBuserInfo = EBresponse.notification.request.content.userInfo;
    if([EBresponse.notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:EBuserInfo];
    }
    completionHandler();  // 系统要求执行这个方法
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)EBuserInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    // Required, iOS 7 Support
    [JPUSHService handleRemoteNotification:EBuserInfo];
    completionHandler(UIBackgroundFetchResultNewData);
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)EBuserInfo {
    
    // Required, For systems with less than or equal to iOS 6
    [JPUSHService handleRemoteNotification:EBuserInfo];
}
//接受处理本地推送
- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)EBnotification NS_AVAILABLE_IOS(4_0) {
    //使用UIAlertView显示推送的消息
    UIAlertView *EBalert = [[UIAlertView alloc] initWithTitle:EBnotification.alertTitle message:EBnotification.alertBody delegate:self cancelButtonTitle:NSLocalizedString(@"确定", nil) otherButtonTitles:nil, nil];
    [EBalert show];
}
@end
