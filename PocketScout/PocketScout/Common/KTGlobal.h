//
//  KTglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef KTglobal_h
#define KTglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "KTNDHTTPClient.h"
#import "MBProgressHUD+KTNJ.h"
#import "KTHBTool.h"
#import "CalendarTool.h"
#import "KTUIUtilities.h"
#import "KTTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define KTH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define KTKeyWindow [UIApplication sharedApplication].keyWindow
#define KTWIDTH [UIScreen mainScreen].bounds.size.width
#define KTHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define KTisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define KTkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !KTisPad : NO)
//判断iPhone5系列
#define KTkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !KTisPad : NO)
//判断iPhone6系列
#define KTkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !KTisPad : NO)
//判断iphone6+系列
#define KTkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !KTisPad : NO)
//判断iPhoneX
#define KTIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !KTisPad : NO)
//判断iPHoneXr
#define KTIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !KTisPad : NO)
//判断iPhoneXs
#define KTIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !KTisPad : NO)
//判断iPhoneXs Max
#define KTIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !KTisPad : NO)
//iPhoneX系列
#define KTISIPHONEX ((KTIS_IPHONE_X==YES || KTIS_IPHONE_Xr ==YES || KTIS_IPHONE_Xs== YES || KTIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define KTHeightStatusBar ((KTIS_IPHONE_X==YES || KTIS_IPHONE_Xr ==YES || KTIS_IPHONE_Xs== YES || KTIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define KTHeightNavBar ((KTIS_IPHONE_X==YES || KTIS_IPHONE_Xr ==YES || KTIS_IPHONE_Xs== YES || KTIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define KTHeightTabBar ((KTIS_IPHONE_X==YES || KTIS_IPHONE_Xr ==YES || KTIS_IPHONE_Xs == YES || KTIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define KTHeightNavContentBar ((KTIS_IPHONE_X == YES || KTIS_IPHONE_Xr ==YES || KTIS_IPHONE_Xs == YES || KTIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* KTglobal_h */
