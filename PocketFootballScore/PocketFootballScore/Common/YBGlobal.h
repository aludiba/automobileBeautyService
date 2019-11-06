//
//  YBglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef YBglobal_h
#define YBglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "YBNDHTTPClient.h"
#import "MBProgressHUD+YBNJ.h"
#import "YBHBTool.h"
#import "CalendarTool.h"
#import "YBUIUtilities.h"
#import "YBTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define YBH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define YBKeyWindow [UIApplication sharedApplication].keyWindow
#define YBWIDTH [UIScreen mainScreen].bounds.size.width
#define YBHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define YBisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define YBkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !YBisPad : NO)
//判断iPhone5系列
#define YBkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !YBisPad : NO)
//判断iPhone6系列
#define YBkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !YBisPad : NO)
//判断iphone6+系列
#define YBkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !YBisPad : NO)
//判断iPhoneX
#define YBIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !YBisPad : NO)
//判断iPHoneXr
#define YBIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !YBisPad : NO)
//判断iPhoneXs
#define YBIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !YBisPad : NO)
//判断iPhoneXs Max
#define YBIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !YBisPad : NO)
//iPhoneX系列
#define YBISIPHONEX ((YBIS_IPHONE_X==YES || YBIS_IPHONE_Xr ==YES || YBIS_IPHONE_Xs== YES || YBIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define YBHeightStatusBar ((YBIS_IPHONE_X==YES || YBIS_IPHONE_Xr ==YES || YBIS_IPHONE_Xs== YES || YBIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define YBHeightNavBar ((YBIS_IPHONE_X==YES || YBIS_IPHONE_Xr ==YES || YBIS_IPHONE_Xs== YES || YBIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define YBHeightTabBar ((YBIS_IPHONE_X==YES || YBIS_IPHONE_Xr ==YES || YBIS_IPHONE_Xs == YES || YBIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define YBHeightNavContentBar ((YBIS_IPHONE_X == YES || YBIS_IPHONE_Xr ==YES || YBIS_IPHONE_Xs == YES || YBIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* YBglobal_h */
