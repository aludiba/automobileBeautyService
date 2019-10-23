//
//  PBglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef PBglobal_h
#define PBglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "PBNDHTTPClient.h"
#import "MBProgressHUD+PBNJ.h"
#import "PBHBTool.h"
#import "CalendarTool.h"
#import "PBUIUtilities.h"
#import "PBTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define PBH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define PBKeyWindow [UIApplication sharedApplication].keyWindow
#define PBWIDTH [UIScreen mainScreen].bounds.size.width
#define PBHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define PBisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define PBkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !PBisPad : NO)
//判断iPhone5系列
#define PBkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !PBisPad : NO)
//判断iPhone6系列
#define PBkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !PBisPad : NO)
//判断iphone6+系列
#define PBkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !PBisPad : NO)
//判断iPhoneX
#define PBIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PBisPad : NO)
//判断iPHoneXr
#define PBIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !PBisPad : NO)
//判断iPhoneXs
#define PBIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PBisPad : NO)
//判断iPhoneXs Max
#define PBIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !PBisPad : NO)
//iPhoneX系列
#define PBISIPHONEX ((PBIS_IPHONE_X==YES || PBIS_IPHONE_Xr ==YES || PBIS_IPHONE_Xs== YES || PBIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define PBHeightStatusBar ((PBIS_IPHONE_X==YES || PBIS_IPHONE_Xr ==YES || PBIS_IPHONE_Xs== YES || PBIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define PBHeightNavBar ((PBIS_IPHONE_X==YES || PBIS_IPHONE_Xr ==YES || PBIS_IPHONE_Xs== YES || PBIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define PBHeightTabBar ((PBIS_IPHONE_X==YES || PBIS_IPHONE_Xr ==YES || PBIS_IPHONE_Xs == YES || PBIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define PBHeightNavContentBar ((PBIS_IPHONE_X == YES || PBIS_IPHONE_Xr ==YES || PBIS_IPHONE_Xs == YES || PBIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* PBglobal_h */
