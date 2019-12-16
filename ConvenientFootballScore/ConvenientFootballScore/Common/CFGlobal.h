//
//  CFglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef CFglobal_h
#define CFglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "CFNDHTTPClient.h"
#import "MBProgressHUD+CFNJ.h"
#import "CFHBTool.h"
#import "CalendarTool.h"
#import "CFUIUtilities.h"
#import "CFTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define CFH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define CFKeyWindow [UIApplication sharedApplication].keyWindow
#define CFWIDTH [UIScreen mainScreen].bounds.size.width
#define CFHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define CFisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define CFkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !CFisPad : NO)
//判断iPhone5系列
#define CFkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !CFisPad : NO)
//判断iPhone6系列
#define CFkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !CFisPad : NO)
//判断iphone6+系列
#define CFkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !CFisPad : NO)
//判断iPhoneX
#define CFIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CFisPad : NO)
//判断iPHoneXr
#define CFIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !CFisPad : NO)
//判断iPhoneXs
#define CFIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CFisPad : NO)
//判断iPhoneXs Max
#define CFIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !CFisPad : NO)
//iPhoneX系列
#define CFISIPHONEX ((CFIS_IPHONE_X==YES || CFIS_IPHONE_Xr ==YES || CFIS_IPHONE_Xs== YES || CFIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define CFHeightStatusBar ((CFIS_IPHONE_X==YES || CFIS_IPHONE_Xr ==YES || CFIS_IPHONE_Xs== YES || CFIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define CFHeightNavBar ((CFIS_IPHONE_X==YES || CFIS_IPHONE_Xr ==YES || CFIS_IPHONE_Xs== YES || CFIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define CFHeightTabBar ((CFIS_IPHONE_X==YES || CFIS_IPHONE_Xr ==YES || CFIS_IPHONE_Xs == YES || CFIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define CFHeightNavContentBar ((CFIS_IPHONE_X == YES || CFIS_IPHONE_Xr ==YES || CFIS_IPHONE_Xs == YES || CFIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* CFglobal_h */
