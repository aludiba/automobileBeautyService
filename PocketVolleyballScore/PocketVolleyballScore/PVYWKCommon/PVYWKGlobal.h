//
//  PVYWKglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef PVYWKglobal_h
#define PVYWKglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "PVYWKNDHTTPClient.h"
#import "MBProgressHUD+PVYWKNJ.h"
#import "PVYWKHBTool.h"
#import "CalendarTool.h"
#import "PVYWKUIUtilities.h"
#import "PVYWKTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
typedef NS_ENUM(NSInteger, scorecardOperationStartOrStopType) {
    scorecardOperationStartOrStopTypeStart,
    scorecardOperationStartOrStopTypeStop,
};
typedef NS_ENUM(NSInteger, scorecardWhichWinType) {
    scorecardWhichWinTypeMain,
    scorecardWhichWinTypeGuest,
};
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define PVYWKH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define PVYWKKeyWindow [UIApplication sharedApplication].keyWindow
#define PVYWKWIDTH [UIScreen mainScreen].bounds.size.width
#define PVYWKHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define PVYWKisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define PVYWKkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !PVYWKisPad : NO)
//判断iPhone5系列
#define PVYWKkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !PVYWKisPad : NO)
//判断iPhone6系列
#define PVYWKkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !PVYWKisPad : NO)
//判断iphone6+系列
#define PVYWKkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !PVYWKisPad : NO)
//判断iPhoneX
#define PVYWKIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PVYWKisPad : NO)
//判断iPHoneXr
#define PVYWKIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !PVYWKisPad : NO)
//判断iPhoneXs
#define PVYWKIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PVYWKisPad : NO)
//判断iPhoneXs Max
#define PVYWKIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !PVYWKisPad : NO)
//iPhoneX系列
#define PVYWKISIPHONEX ((PVYWKIS_IPHONE_X==YES || PVYWKIS_IPHONE_Xr ==YES || PVYWKIS_IPHONE_Xs== YES || PVYWKIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define PVYWKHeightStatusBar ((PVYWKIS_IPHONE_X==YES || PVYWKIS_IPHONE_Xr ==YES || PVYWKIS_IPHONE_Xs== YES || PVYWKIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define PVYWKHeightNavBar ((PVYWKIS_IPHONE_X==YES || PVYWKIS_IPHONE_Xr ==YES || PVYWKIS_IPHONE_Xs== YES || PVYWKIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define PVYWKHeightTabBar ((PVYWKIS_IPHONE_X==YES || PVYWKIS_IPHONE_Xr ==YES || PVYWKIS_IPHONE_Xs == YES || PVYWKIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define PVYWKHeightNavContentBar ((PVYWKIS_IPHONE_X == YES || PVYWKIS_IPHONE_Xr ==YES || PVYWKIS_IPHONE_Xs == YES || PVYWKIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* PVYWKglobal_h */
