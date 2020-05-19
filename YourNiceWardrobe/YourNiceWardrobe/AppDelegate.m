//
//  AppDelegate.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/24.
//  Copyright © 2020 hb. All rights reserved.
//

#import "AppDelegate.h"
#import "Reachability.h"
#import "JPUSHService.h"
#ifdef NSFoundationVersionNumber_iOS_9_x_Max
#import <UserNotifications/UserNotifications.h>
#endif
#import <AdSupport/AdSupport.h>
@interface AppDelegate ()<JPUSHRegisterDelegate,JPUSHGeofenceDelegate>
@property(nonatomic,strong)Reachability *BChostReah;
@property(nonatomic,assign)NetworkStatus BCstatus;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self BCsetJPush:launchOptions];
    [AVOSCloud setApplicationId:@"PcCJcbsza7wzXrJ4iIqwDP6C-MdYXbMMI" clientKey:@"mJewojB2hcyGapar0ndzzjw6"];
    self.BCwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.BCwindow.backgroundColor = [UIColor whiteColor];
    self.BCwindow.rootViewController = [self BCrootController];
    [self.BCwindow makeKeyAndVisible];
    //开启网络状况的监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(BCreachabilityChanged:)name:kReachabilityChangedNotification object:nil];
    Reachability *BCreach = [Reachability reachabilityWithHostName:@"www.apple.com"];
    [BCreach startNotifier];
    //开始监听，会启动一个runloop
    [self.BChostReah startNotifier];
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
     Boolean BCisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"BCisNet"];
     if (BCisNet) {
         AVQuery *BCbquery = [AVQuery queryWithClassName:@"BCYourNiceWardrobe"];
         [BCbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                 NSDictionary *BCDic = (NSDictionary *)[array firstObject];
                 NSString *BCstring = [BCDic objectForKey:@"YourNiceWardrobe"];
                 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:BCstring] options:@{} completionHandler:nil];
         }];
     }
}
-(void)BCreachabilityChanged:(NSNotification *)BCnotification{
    Reachability *BCreach = [BCnotification object];
    if([BCreach isKindOfClass:[Reachability class]]){
        NetworkStatus BCstatus = [BCreach currentReachabilityStatus];
        //如果网络状态发生改变
        if (BCstatus != self.BCstatus) {
            //记录当前网络状态
            self.BCstatus = BCstatus;
            UIAlertController *BCalertVC = [UIAlertController alertControllerWithTitle:nil message:[self BCisInternetWith:BCstatus] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *BCsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                   AVQuery *BCbquery = [AVQuery queryWithClassName:@"BCYourNiceWardrobe"];
                   [BCbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                       Boolean BCisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"BCisNet"];
                       if (!BCisNet) {
                           NSDictionary *BCDic = (NSDictionary *)[array firstObject];
                           NSString *BCstring = [BCDic objectForKey:@"YourNiceWardrobe"];
                           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:BCstring] options:@{} completionHandler:nil];
                           [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"BCisNet"];
                           [NSUserDefaults.standardUserDefaults synchronize];
                       }
                   }];
            }];
            [BCalertVC addAction:BCsureAction];
            [BCKeyWindow.rootViewController presentViewController:BCalertVC animated:YES completion:nil];
        }
    }
}
- (NSString*)BCisInternetWith:(NetworkStatus)BCstatus{
    switch (BCstatus) {
        case NotReachable:
            return @"暂无网络";
            break;
        case ReachableViaWiFi:
            return @"WIFI上网";
            break;
        case ReachableViaWWAN:
            return @"移动上网";
            break;
        default:
            break;
    }
}
- (UIViewController *)BCrootController{
        BCTabBarController *BCtabVC = [BCTabBarController BCshareInstance];
        return BCtabVC;
}
- (void)BCsetJPush:(NSDictionary *)BClaunchOptions{
    //Required
    //notice: 3.0.0 及以后版本注册可以这样写，也可以继续用之前的注册方式
    JPUSHRegisterEntity *BCentity = [[JPUSHRegisterEntity alloc] init];
    BCentity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound|JPAuthorizationOptionProvidesAppNotificationSettings;
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        // 可以添加自定义 categories
        // NSSet<UNNotificationCategory *> *categories for iOS10 or later
        // NSSet<UIUserNotificationCategory *> *categories for iOS8 and iOS9
    }
    [JPUSHService registerForRemoteNotificationConfig:BCentity delegate:self];
    
    // Optional
    // 获取 IDFA
    // 如需使用 IDFA 功能请添加此代码并在初始化方法的 advertisingIdentifier 参数中填写对应值
    NSString *BCadvertisingId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    // Required
    // init Push
    // notice: 2.1.5 版本的 SDK 新增的注册方法，改成可上报 IDFA，如果没有使用 IDFA 直接传 nil
    [JPUSHService setupWithOption:BClaunchOptions appKey:@"5a8c64982e89da31177fa2e2"
                          channel:@"App Store"
                 apsForProduction:1];
}
#pragma mark- JPUSHRegisterDelegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)BCdeviceToken{
    // Required - 注册 DeviceToken
    [JPUSHService registerDeviceToken:BCdeviceToken];
}
// iOS 12 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center openSettingsForNotification:(UNNotification *)BCnotification{
    if (BCnotification && [BCnotification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        //从通知界面直接进入应用
    }else{
        //从通知设置界面进入应用
    }
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)BCnotification withCompletionHandler:(void (^)(NSInteger))completionHandler {
    // Required
    NSDictionary *BCuserInfo = BCnotification.request.content.userInfo;
    if([BCnotification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:BCuserInfo];
    }
    completionHandler(UNNotificationPresentationOptionAlert); // 需要执行这个方法，选择是否提醒用户，有 Badge、Sound、Alert 三种类型可以选择设置
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)BCresponse withCompletionHandler:(void (^)())completionHandler {
    // Required
    NSDictionary *BCuserInfo = BCresponse.notification.request.content.userInfo;
    if([BCresponse.notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:BCuserInfo];
    }
    completionHandler();  // 系统要求执行这个方法
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)BCuserInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    // Required, iOS 7 Support
    [JPUSHService handleRemoteNotification:BCuserInfo];
    completionHandler(UIBackgroundFetchResultNewData);
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)BCuserInfo {
    
    // Required, For systems with less than or equal to iOS 6
    [JPUSHService handleRemoteNotification:BCuserInfo];
}
//接受处理本地推送
- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)BCnotification NS_AVAILABLE_IOS(4_0) {
    //使用UIAlertView显示推送的消息
    UIAlertView *BCalert = [[UIAlertView alloc] initWithTitle:BCnotification.alertTitle message:BCnotification.alertBody delegate:self cancelButtonTitle:NSLocalizedString(@"确定", nil) otherButtonTitles:nil, nil];
    [BCalert show];
}
@end
