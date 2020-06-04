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
@property(nonatomic,strong)Reachability *FBhostReah;
@property(nonatomic,assign)NetworkStatus FBstatus;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self FBsetJPush:launchOptions];
    [AVOSCloud setApplicationId:@"PcCJcbsza7wzXrJ4iIqwDP6C-MdYXbMMI" clientKey:@"mJewojB2hcyGapar0ndzzjw6"];
    self.FBwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.FBwindow.backgroundColor = [UIColor whiteColor];
    self.FBwindow.rootViewController = [self FBrootController];
    [self.FBwindow makeKeyAndVisible];
    //开启网络状况的监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(FBreachabilityChanged:)name:kReachabilityChangedNotification object:nil];
    Reachability *FBreach = [Reachability reachabilityWithHostName:@"www.apple.com"];
    [FBreach startNotifier];
    //开始监听，会启动一个runloop
    [self.FBhostReah startNotifier];
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
     Boolean FBisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"FBisNet"];
     if (FBisNet) {
         AVQuery *FBbquery = [AVQuery queryWithClassName:@"FBYourNiceWardrobe"];
         [FBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                 NSDictionary *FBDic = (NSDictionary *)[array firstObject];
                 NSString *FBstring = [FBDic objectForKey:@"YourNiceWardrobe"];
                 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:FBstring] options:@{} completionHandler:nil];
         }];
     }
}
-(void)FBreachabilityChanged:(NSNotification *)FBnotification{
    Reachability *FBreach = [FBnotification object];
    if([FBreach isKindOfClass:[Reachability class]]){
        NetworkStatus FBstatus = [FBreach currentReachabilityStatus];
        //如果网络状态发生改变
        if (FBstatus != self.FBstatus) {
            //记录当前网络状态
            self.FBstatus = FBstatus;
            UIAlertController *FBalertVC = [UIAlertController alertControllerWithTitle:nil message:[self FBisInternetWith:FBstatus] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *FBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                   AVQuery *FBbquery = [AVQuery queryWithClassName:@"FBYourNiceWardrobe"];
                   [FBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                       Boolean FBisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"FBisNet"];
                       if (!FBisNet) {
                           NSDictionary *FBDic = (NSDictionary *)[array firstObject];
                           NSString *FBstring = [FBDic objectForKey:@"YourNiceWardrobe"];
                           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:FBstring] options:@{} completionHandler:nil];
                           [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"FBisNet"];
                           [NSUserDefaults.standardUserDefaults synchronize];
                       }
                   }];
            }];
            [FBalertVC addAction:FBsureAction];
            [FBKeyWindow.rootViewController presentViewController:FBalertVC animated:YES completion:nil];
        }
    }
}
- (NSString*)FBisInternetWith:(NetworkStatus)FBstatus{
    switch (FBstatus) {
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
- (UIViewController *)FBrootController{
        FBTabBarController *FBtabVC = [FBTabBarController FBshareInstance];
        return FBtabVC;
}
- (void)FBsetJPush:(NSDictionary *)FBlaunchOptions{
    //Required
    //notice: 3.0.0 及以后版本注册可以这样写，也可以继续用之前的注册方式
    JPUSHRegisterEntity *FBentity = [[JPUSHRegisterEntity alloc] init];
    FBentity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound|JPAuthorizationOptionProvidesAppNotificationSettings;
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        // 可以添加自定义 categories
        // NSSet<UNNotificationCategory *> *categories for iOS10 or later
        // NSSet<UIUserNotificationCategory *> *categories for iOS8 and iOS9
    }
    [JPUSHService registerForRemoteNotificationConfig:FBentity delegate:self];
    
    // Optional
    // 获取 IDFA
    // 如需使用 IDFA 功能请添加此代码并在初始化方法的 advertisingIdentifier 参数中填写对应值
    NSString *FBadvertisingId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    // Required
    // init Push
    // notice: 2.1.5 版本的 SDK 新增的注册方法，改成可上报 IDFA，如果没有使用 IDFA 直接传 nil
    [JPUSHService setupWithOption:FBlaunchOptions appKey:@"5a8c64982e89da31177fa2e2"
                          channel:@"App Store"
                 apsForProduction:1];
}
#pragma mark- JPUSHRegisterDelegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)FBdeviceToken{
    // Required - 注册 DeviceToken
    [JPUSHService registerDeviceToken:FBdeviceToken];
}
// iOS 12 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center openSettingsForNotification:(UNNotification *)FBnotification{
    if (FBnotification && [FBnotification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        //从通知界面直接进入应用
    }else{
        //从通知设置界面进入应用
    }
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)FBnotification withCompletionHandler:(void (^)(NSInteger))completionHandler {
    // Required
    NSDictionary *FBuserInfo = FBnotification.request.content.userInfo;
    if([FBnotification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:FBuserInfo];
    }
    completionHandler(UNNotificationPresentationOptionAlert); // 需要执行这个方法，选择是否提醒用户，有 Badge、Sound、Alert 三种类型可以选择设置
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)FBresponse withCompletionHandler:(void (^)())completionHandler {
    // Required
    NSDictionary *FBuserInfo = FBresponse.notification.request.content.userInfo;
    if([FBresponse.notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:FBuserInfo];
    }
    completionHandler();  // 系统要求执行这个方法
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)FBuserInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    // Required, iOS 7 Support
    [JPUSHService handleRemoteNotification:FBuserInfo];
    completionHandler(UIBackgroundFetchResultNewData);
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)FBuserInfo {
    
    // Required, For systems with less than or equal to iOS 6
    [JPUSHService handleRemoteNotification:FBuserInfo];
}
//接受处理本地推送
- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)FBnotification NS_AVAILABLE_IOS(4_0) {
    //使用UIAlertView显示推送的消息
    UIAlertView *FBalert = [[UIAlertView alloc] initWithTitle:FBnotification.alertTitle message:FBnotification.alertBody delegate:self cancelButtonTitle:NSLocalizedString(@"确定", nil) otherButtonTitles:nil, nil];
    [FBalert show];
}
@end
