//
//  PVglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef PVglobal_h
#define PVglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "PVNDHTTPClient.h"
#import "MBProgressHUD+PVNJ.h"
#import "PVHBTool.h"
#import "CalendarTool.h"
#import "PVUIUtilities.h"
#import "PVTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
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
#define PVH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define PVKeyWindow [UIApplication sharedApplication].keyWindow
#define PVWIDTH [UIScreen mainScreen].bounds.size.width
#define PVHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define PVisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define PVkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !PVisPad : NO)
//判断iPhone5系列
#define PVkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !PVisPad : NO)
//判断iPhone6系列
#define PVkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !PVisPad : NO)
//判断iphone6+系列
#define PVkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !PVisPad : NO)
//判断iPhoneX
#define PVIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PVisPad : NO)
//判断iPHoneXr
#define PVIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !PVisPad : NO)
//判断iPhoneXs
#define PVIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PVisPad : NO)
//判断iPhoneXs Max
#define PVIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !PVisPad : NO)
//iPhoneX系列
#define PVISIPHONEX ((PVIS_IPHONE_X==YES || PVIS_IPHONE_Xr ==YES || PVIS_IPHONE_Xs== YES || PVIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define PVHeightStatusBar ((PVIS_IPHONE_X==YES || PVIS_IPHONE_Xr ==YES || PVIS_IPHONE_Xs== YES || PVIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define PVHeightNavBar ((PVIS_IPHONE_X==YES || PVIS_IPHONE_Xr ==YES || PVIS_IPHONE_Xs== YES || PVIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define PVHeightTabBar ((PVIS_IPHONE_X==YES || PVIS_IPHONE_Xr ==YES || PVIS_IPHONE_Xs == YES || PVIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define PVHeightNavContentBar ((PVIS_IPHONE_X == YES || PVIS_IPHONE_Xr ==YES || PVIS_IPHONE_Xs == YES || PVIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* PVglobal_h */
