//
//  WBYBKOKglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef WBYBKOKglobal_h
#define WBYBKOKglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+WBYBKOKNJ.h"
#import "WBYBKOKHBTool.h"
#import "CalendarTool.h"
#import "WBYBKOKUIUtilities.h"
#import "WBYBKOKTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define WBYBKOKH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define WBYBKOKKeyWindow [UIApplication sharedApplication].keyWindow
#define WBYBKOKWIDTH [UIScreen mainScreen].bounds.size.width
#define WBYBKOKHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define WBYBKOKisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define WBYBKOKkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !WBYBKOKisPad : NO)
//判断iPhone5系列
#define WBYBKOKkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !WBYBKOKisPad : NO)
//判断iPhone6系列
#define WBYBKOKkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !WBYBKOKisPad : NO)
//判断iphone6+系列
#define WBYBKOKkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !WBYBKOKisPad : NO)
//判断iPhoneX
#define WBYBKOKIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !WBYBKOKisPad : NO)
//判断iPHoneXr
#define WBYBKOKIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !WBYBKOKisPad : NO)
//判断iPhoneXs
#define WBYBKOKIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !WBYBKOKisPad : NO)
//判断iPhoneXs Max
#define WBYBKOKIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !WBYBKOKisPad : NO)
//iPhoneX系列
#define WBYBKOKISIPHONEX ((WBYBKOKIS_IPHONE_X==YES || WBYBKOKIS_IPHONE_Xr ==YES || WBYBKOKIS_IPHONE_Xs== YES || WBYBKOKIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define WBYBKOKHeightStatusBar ((WBYBKOKIS_IPHONE_X==YES || WBYBKOKIS_IPHONE_Xr ==YES || WBYBKOKIS_IPHONE_Xs== YES || WBYBKOKIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define WBYBKOKHeightNavBar ((WBYBKOKIS_IPHONE_X==YES || WBYBKOKIS_IPHONE_Xr ==YES || WBYBKOKIS_IPHONE_Xs== YES || WBYBKOKIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define WBYBKOKHeightTabBar ((WBYBKOKIS_IPHONE_X==YES || WBYBKOKIS_IPHONE_Xr ==YES || WBYBKOKIS_IPHONE_Xs == YES || WBYBKOKIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define WBYBKOKHeightNavContentBar ((WBYBKOKIS_IPHONE_X == YES || WBYBKOKIS_IPHONE_Xr ==YES || WBYBKOKIS_IPHONE_Xs == YES || WBYBKOKIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* WBYBKOKglobal_h */
