//
//  ZLglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef ZLglobal_h
#define ZLglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "ZLNDHTTPClient.h"
#import "MBProgressHUD+ZLNJ.h"
#import "ZLHBTool.h"
#import "CalendarTool.h"
#import "ZLUIUtilities.h"
#import "ZLTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define ZLH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define ZLKeyWindow [UIApplication sharedApplication].keyWindow
#define ZLWIDTH [UIScreen mainScreen].bounds.size.width
#define ZLHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define ZLisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define ZLkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !ZLisPad : NO)
//判断iPhone5系列
#define ZLkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !ZLisPad : NO)
//判断iPhone6系列
#define ZLkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !ZLisPad : NO)
//判断iphone6+系列
#define ZLkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !ZLisPad : NO)
//判断iPhoneX
#define ZLIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !ZLisPad : NO)
//判断iPHoneXr
#define ZLIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !ZLisPad : NO)
//判断iPhoneXs
#define ZLIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !ZLisPad : NO)
//判断iPhoneXs Max
#define ZLIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !ZLisPad : NO)
//iPhoneX系列
#define ZLISIPHONEX ((ZLIS_IPHONE_X==YES || ZLIS_IPHONE_Xr ==YES || ZLIS_IPHONE_Xs== YES || ZLIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define ZLHeightStatusBar ((ZLIS_IPHONE_X==YES || ZLIS_IPHONE_Xr ==YES || ZLIS_IPHONE_Xs== YES || ZLIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define ZLHeightNavBar ((ZLIS_IPHONE_X==YES || ZLIS_IPHONE_Xr ==YES || ZLIS_IPHONE_Xs== YES || ZLIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define ZLHeightTabBar ((ZLIS_IPHONE_X==YES || ZLIS_IPHONE_Xr ==YES || ZLIS_IPHONE_Xs == YES || ZLIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define ZLHeightNavContentBar ((ZLIS_IPHONE_X == YES || ZLIS_IPHONE_Xr ==YES || ZLIS_IPHONE_Xs == YES || ZLIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* ZLglobal_h */
