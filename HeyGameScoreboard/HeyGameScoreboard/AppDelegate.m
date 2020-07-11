//
//  AppDelegate.m
//  HeyGameScoreboard
//
//  Created by user on 2020/7/10.
//  Copyright © 2020 Hey. All rights reserved.
//

#import "AppDelegate.h"
#import "BMScoringViewController.h"
#import "JPUSHService.h"
#ifdef NSFoundationVersionNumber_iOS_9_x_Max
#import <UserNotifications/UserNotifications.h>
#endif
#import <AdSupport/AdSupport.h>
@interface AppDelegate ()<JPUSHRegisterDelegate,JPUSHGeofenceDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [AVOSCloud setApplicationId:@"PcCJcbsza7wzXrJ4iIqwDP6C-MdYXbMMI" clientKey:@"mJewojB2hcyGapar0ndzzjw6"];
    [self BMsetJPush:launchOptions];
    self.BMwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.BMwindow.backgroundColor = [UIColor whiteColor];
    self.BMwindow.rootViewController = [self BMrootController];
    [self.BMwindow makeKeyAndVisible];
    return YES;
}
- (UIViewController *)BMrootController{
    BMScoringViewController *BMScoringVC = [[BMScoringViewController alloc] init];
    UINavigationController *BMMainVC = [[UINavigationController alloc] initWithRootViewController:BMScoringVC];
    return BMMainVC;
}
- (void)BMsetJPush:(NSDictionary *)BMlaunchOptions{
    //Required
    JPUSHRegisterEntity *BMentity = [[JPUSHRegisterEntity alloc] init];
    if (@available(iOS 12.0, *)) {
        BMentity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound|JPAuthorizationOptionProvidesAppNotificationSettings;
    }
    [JPUSHService registerForRemoteNotificationConfig:BMentity delegate:self];
    [JPUSHService setupWithOption:BMlaunchOptions appKey:@"5c0254520f4db5beb8ceb206"
                          channel:@"yingyongshangdian"
                 apsForProduction:1];
}
#pragma mark- JPUSHRegisterDelegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)BMdeviceToken{
    [JPUSHService registerDeviceToken:BMdeviceToken];
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)BMnotification withCompletionHandler:(void (^)(NSInteger))completionHandler {
    // Required
    NSDictionary *BMuserInfo = BMnotification.request.content.userInfo;
    if([BMnotification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:BMuserInfo];
    }
    completionHandler(UNNotificationPresentationOptionAlert); // 需要执行这个方法，选择是否提醒用户，有 Badge、Sound、Alert 三种类型可以选择设置
}
// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)BMresponse withCompletionHandler:(void (^)())completionHandler {
    // Required
    NSDictionary *BMuserInfo = BMresponse.notification.request.content.userInfo;
    if([BMresponse.notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [JPUSHService handleRemoteNotification:BMuserInfo];
    }
    completionHandler();  // 系统要求执行这个方法
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)BMuserInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    // Required, iOS 7 Support
    [JPUSHService handleRemoteNotification:BMuserInfo];
    completionHandler(UIBackgroundFetchResultNewData);
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)BMuserInfo {
    // Required, For systems with less than or equal to iOS 6
    [JPUSHService handleRemoteNotification:BMuserInfo];
}
@end
