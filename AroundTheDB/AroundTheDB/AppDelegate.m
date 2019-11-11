//
//  AppDelegate.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/12.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "AppDelegate.h"
#import "JPUSHService.h"
#ifdef NSFoundationVersionNumber_iOS_9_x_Max
#import <UserNotifications/UserNotifications.h>
#endif
#import <AdSupport/AdSupport.h>
#import "ABTabBarViewController.h"
#import "ABLoginViewController.h"
#import "ABWebViewController.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#define BMK_KEY @"1qE0Fvek3PM2ufdkB1qakVQSkzBvHNk8"//百度地图的key
@interface AppDelegate ()<JPUSHRegisterDelegate,JPUSHGeofenceDelegate>
@property (nonatomic, strong) BMKMapManager *mapManager;
@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setJPush:launchOptions];
    [Bmob resetDomain:@"http://AroundDB.jd127.cn"];
    [Bmob registerWithAppKey:@"11e1669a7c10fec2b2c79577e2132bab"];
//    [AVOSCloud setApplicationId:@"qEwQUkhy3ze3bwGtBwKAxbWm-9Nh9j0Va" clientKey:@"9x4VnWXyGjlviXKsrtV1gJmP"];
//    [AVOSCloud setApplicationId:@"{{appid}}" clientKey:@"{{appkey}}"];
    [self initBaiDuMapManager];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"HB"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            self.window.rootViewController = [self rootController];
        }else{
            self.window.rootViewController = [self rootController];
            if (array.count) {
                BmobObject *obj = [array lastObject];
                NSString *key = [obj objectForKey:@"KEY"];
                ABWebViewController *webVC = [[ABWebViewController alloc] init];
                webVC.key = key;
            }
        }
    }];
    self.window.rootViewController = [self rootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)initBaiDuMapManager{
    //百度地图
    _mapManager = [BMKMapManager new];
    BOOL ret = [_mapManager start:BMK_KEY generalDelegate:nil];
    if (!ret)
    {
        NSLog(@"百度地图启动失败");
    }
    else
    {
        NSLog(@"百度地图启动成功");
    }
}
- (UIViewController *)rootController{
    BmobUser *bUser = [BmobUser currentUser];
    if (bUser) {
        //进行操作
        ABTabBarViewController *tabVC = [ABTabBarViewController shareInstance];
        return tabVC;
    }else{
        //对象为空时，可打开用户注册界面
        ABLoginViewController *loginVC = [ABLoginViewController shareInstance];
        UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
        return loginVCNav;
    }
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
    [JPUSHService setupWithOption:launchOptions appKey:@"4e32a01785c8a008becc12bd"
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
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

@end
