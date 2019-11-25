//
//  PWglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef PWglobal_h
#define PWglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "PWNDHTTPClient.h"
#import "MBProgressHUD+PWNJ.h"
#import "PWHBTool.h"
#import "CalendarTool.h"
#import "PWUIUtilities.h"
#import "PWTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define PWH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define PWKeyWindow [UIApplication sharedApplication].keyWindow
#define PWWIDTH [UIScreen mainScreen].bounds.size.width
#define PWHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define PWisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define PWkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !PWisPad : NO)
//判断iPhone5系列
#define PWkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !PWisPad : NO)
//判断iPhone6系列
#define PWkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !PWisPad : NO)
//判断iphone6+系列
#define PWkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !PWisPad : NO)
//判断iPhoneX
#define PWIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PWisPad : NO)
//判断iPHoneXr
#define PWIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !PWisPad : NO)
//判断iPhoneXs
#define PWIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PWisPad : NO)
//判断iPhoneXs Max
#define PWIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !PWisPad : NO)
//iPhoneX系列
#define PWISIPHONEX ((PWIS_IPHONE_X==YES || PWIS_IPHONE_Xr ==YES || PWIS_IPHONE_Xs== YES || PWIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define PWHeightStatusBar ((PWIS_IPHONE_X==YES || PWIS_IPHONE_Xr ==YES || PWIS_IPHONE_Xs== YES || PWIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define PWHeightNavBar ((PWIS_IPHONE_X==YES || PWIS_IPHONE_Xr ==YES || PWIS_IPHONE_Xs== YES || PWIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define PWHeightTabBar ((PWIS_IPHONE_X==YES || PWIS_IPHONE_Xr ==YES || PWIS_IPHONE_Xs == YES || PWIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define PWHeightNavContentBar ((PWIS_IPHONE_X == YES || PWIS_IPHONE_Xr ==YES || PWIS_IPHONE_Xs == YES || PWIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* PWglobal_h */
