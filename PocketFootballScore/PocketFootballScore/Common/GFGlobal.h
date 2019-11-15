//
//  GFglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef GFglobal_h
#define GFglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "GFNDHTTPClient.h"
#import "MBProgressHUD+GFNJ.h"
#import "GFHBTool.h"
#import "CalendarTool.h"
#import "GFUIUtilities.h"
#import "GFTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define GFH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define GFKeyWindow [UIApplication sharedApplication].keyWindow
#define GFWIDTH [UIScreen mainScreen].bounds.size.width
#define GFHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define GFisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define GFkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !GFisPad : NO)
//判断iPhone5系列
#define GFkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !GFisPad : NO)
//判断iPhone6系列
#define GFkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !GFisPad : NO)
//判断iphone6+系列
#define GFkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !GFisPad : NO)
//判断iPhoneX
#define GFIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !GFisPad : NO)
//判断iPHoneXr
#define GFIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !GFisPad : NO)
//判断iPhoneXs
#define GFIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !GFisPad : NO)
//判断iPhoneXs Max
#define GFIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !GFisPad : NO)
//iPhoneX系列
#define GFISIPHONEX ((GFIS_IPHONE_X==YES || GFIS_IPHONE_Xr ==YES || GFIS_IPHONE_Xs== YES || GFIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define GFHeightStatusBar ((GFIS_IPHONE_X==YES || GFIS_IPHONE_Xr ==YES || GFIS_IPHONE_Xs== YES || GFIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define GFHeightNavBar ((GFIS_IPHONE_X==YES || GFIS_IPHONE_Xr ==YES || GFIS_IPHONE_Xs== YES || GFIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define GFHeightTabBar ((GFIS_IPHONE_X==YES || GFIS_IPHONE_Xr ==YES || GFIS_IPHONE_Xs == YES || GFIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define GFHeightNavContentBar ((GFIS_IPHONE_X == YES || GFIS_IPHONE_Xr ==YES || GFIS_IPHONE_Xs == YES || GFIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* GFglobal_h */
