//
//  VTglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef VTglobal_h
#define VTglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "VTNDHTTPClient.h"
#import "MBProgressHUD+VTNJ.h"
#import "VTHVTool.h"
#import "CalendarTool.h"
#import "VTUIUtilities.h"
#import "VTTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define VTH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define VTKeyWindow [UIApplication sharedApplication].keyWindow
#define VTWIDTH [UIScreen mainScreen].bounds.size.width
#define VTHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define VTisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define VTkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !VTisPad : NO)
//判断iPhone5系列
#define VTkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !VTisPad : NO)
//判断iPhone6系列
#define VTkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !VTisPad : NO)
//判断iphone6+系列
#define VTkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !VTisPad : NO)
//判断iPhoneX
#define VTIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !VTisPad : NO)
//判断iPHoneXr
#define VTIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !VTisPad : NO)
//判断iPhoneXs
#define VTIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !VTisPad : NO)
//判断iPhoneXs Max
#define VTIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !VTisPad : NO)
//iPhoneX系列
#define VTISIPHONEX ((VTIS_IPHONE_X==YES || VTIS_IPHONE_Xr ==YES || VTIS_IPHONE_Xs== YES || VTIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define VTHeightStatusBar ((VTIS_IPHONE_X==YES || VTIS_IPHONE_Xr ==YES || VTIS_IPHONE_Xs== YES || VTIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define VTHeightNavBar ((VTIS_IPHONE_X==YES || VTIS_IPHONE_Xr ==YES || VTIS_IPHONE_Xs== YES || VTIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define VTHeightTabBar ((VTIS_IPHONE_X==YES || VTIS_IPHONE_Xr ==YES || VTIS_IPHONE_Xs == YES || VTIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define VTHeightNavContentBar ((VTIS_IPHONE_X == YES || VTIS_IPHONE_Xr ==YES || VTIS_IPHONE_Xs == YES || VTIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* VTglobal_h */
