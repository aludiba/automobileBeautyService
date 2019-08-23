//
//  AppDelegate.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/12.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "AppDelegate.h"
#import "ABTabBarViewController.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#define BMK_KEY @"1qE0Fvek3PM2ufdkB1qakVQSkzBvHNk8"//百度地图的key

@interface AppDelegate ()
@property (nonatomic, strong) BMKMapManager *mapManager;
@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    [Bmob registerWithAppKey:@"11e1669a7c10fec2b2c79577e2132bab"];
    [AVOSCloud setApplicationId:@"qEwQUkhy3ze3bwGtBwKAxbWm-9Nh9j0Va" clientKey:@"9x4VnWXyGjlviXKsrtV1gJmP"];
    [AVOSCloud setApplicationId:@"{{appid}}" clientKey:@"{{appkey}}"];
    [self initBaiDuMapManager];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [ABTabBarViewController shareInstance];
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
@end
