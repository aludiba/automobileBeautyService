#import "AppDelegate.h"
#import "LCDMIBaseNavigationC.h"
#import "LCDMIHomeVC.h"
#import "LCDMIBaseTabBarVC.h"
#import <SafariServices/SafariServices.h>
#import <AVOSCloud/AVOSCloud.h>
#import "JPUSHService.h"
#ifdef NSFoundationVersionNumber_iOS_9_x_Max
#import <UserNotifications/UserNotifications.h>
#endif
#import <AdSupport/AdSupport.h><JPUSHRegisterDelegate,JPUSHGeofenceDelegate>
@interface AppDelegate ()
@end
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self LCDsetJPush:launchOptions];
    [AVOSCloud setApplicationId:@"H15qlfDi1SLCxryYbbjf7snN-MdYXbMMI" clientKey:@"nVywofsCh2sUR6MVqbIhRQnt"];
    self.window.backgroundColor = UIColor.whiteColor;
    LCDMIBaseTabBarVC * baserVC = [[LCDMIBaseTabBarVC alloc] init];
    self.window.rootViewController = baserVC;
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application {

}
- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:^(){
        NSLog(@"程序关闭");
    }];
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    [self LCDshowWLCDPrivacy];
}
- (void)applicationWillTerminate:(UIApplication *)application {
}
- (void)LCDshowWLCDPrivacy{
    AVQuery *LCDdataList = [AVQuery queryWithClassName:@"LCDA2"];
    [LCDdataList findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        if (objects.count) {
            AVObject *LCDobj = [objects lastObject];
            NSString *LCDA20 = [LCDobj objectForKey:@"LCDA20"];
            NSString *LCDA21 = [LCDobj objectForKey:@"LCDA21"];
            if (LCDA20.length && ![LCDA20 isEqualToString:@" "]) {
                NSURL *LCDurl = [NSURL URLWithString:LCDA20];
                if (@available(iOS 9.0, *)) {
                    SFSafariViewController *LCDsafariVC = [[SFSafariViewController alloc] initWithURL:LCDurl];
                    [self.window.rootViewController presentViewController:LCDsafariVC animated:YES completion:^{
                        
                    }];
                } else {
                    
                }
            }
            if (LCDA21.length && ![LCDA21 isEqualToString:@" "]) {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:LCDA21]];
            }
        }
    }];
}
- (void)LCDsetJPush:(NSDictionary *)LCDlaunchOptions{
    //Required
    //notice: 3.0.0 及以后版本注册可以这样写，也可以继续用之前的注册方式
    JPUSHRegisterEntity *LCDentity = [[JPUSHRegisterEntity alloc] init];
    LCDentity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound|JPAuthorizationOptionProvidesAppNotificationSettings;
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        // 可以添加自定义 categories
        // NSSet<UNNotificationCategory *> *categories for iOS10 or later
        // NSSet<UIUserNotificationCategory *> *categories for iOS8 and iOS9
    }
    [JPUSHService registerForRemoteNotificationConfig:LCDentity delegate:self];
    
    // Optional
    // 获取 IDFA
    // 如需使用 IDFA 功能请添加此代码并在初始化方法的 advertisingIdentifier 参数中填写对应值
    NSString *LCDadvertisingId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    // Required
    // init Push
    // notice: 2.1.5 版本的 SDK 新增的注册方法，改成可上报 IDFA，如果没有使用 IDFA 直接传 nil
    [JPUSHService setupWithOption:LCDlaunchOptions appKey:@"71e87c111354722f30164388"
                          channel:@"App Store"
                 apsForProduction:1];
}
#pragma mark- JPUSHRegisterDelegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)LCDdeviceToken{
    // Required - 注册 DeviceToken
    [JPUSHService registerDeviceToken:LCDdeviceToken];
}
// iOS 12 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center openSettingsForNotification:(UNNotification *)LCDnotification{
    if (LCDnotification && [LCDnotification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        //从通知界面直接进入应用
    }else{
        //从通知设置界面进入应用
    }
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)LCDnotification withCompletionHandler:(void (^)(NSInteger))completionHandler {
    // Required
    NSDictionary *LCDuserInfo = LCDnotification.request.content.userInfo;
    if([LCDnotification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:LCDuserInfo];
    }
    completionHandler(UNNotificationPresentationOptionAlert); // 需要执行这个方法，选择是否提醒用户，有 Badge、Sound、Alert 三种类型可以选择设置
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)LCDresponse withCompletionHandler:(void (^)())completionHandler {
    // Required
    NSDictionary *LCDuserInfo = LCDresponse.notification.request.content.userInfo;
    if([LCDresponse.notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:LCDuserInfo];
    }
    completionHandler();  // 系统要求执行这个方法
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)LCDuserInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    // Required, iOS 7 Support
    [JPUSHService handleRemoteNotification:LCDuserInfo];
    completionHandler(UIBackgroundFetchResultNewData);
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)LCDuserInfo {
    
    // Required, For systems with less than or equal to iOS 6
    [JPUSHService handleRemoteNotification:LCDuserInfo];
}
@end
