//
//  SOglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef SOglobal_h
#define SOglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "SONDHTTPClient.h"
#import "MBProgressHUD+SONJ.h"
#import "SOHBTool.h"
#import "CalendarTool.h"
#import "SOUIUtilities.h"
#import "SOTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define SOH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define SOKeyWindow [UIApplication sharedApplication].keyWindow
#define SOWIDTH [UIScreen mainScreen].bounds.size.width
#define SOHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define SOisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define SOkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !SOisPad : NO)
//判断iPhone5系列
#define SOkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !SOisPad : NO)
//判断iPhone6系列
#define SOkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !SOisPad : NO)
//判断iphone6+系列
#define SOkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !SOisPad : NO)
//判断iPhoneX
#define SOIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !SOisPad : NO)
//判断iPHoneXr
#define SOIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !SOisPad : NO)
//判断iPhoneXs
#define SOIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !SOisPad : NO)
//判断iPhoneXs Max
#define SOIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !SOisPad : NO)
//iPhoneX系列
#define SOISIPHONEX ((SOIS_IPHONE_X==YES || SOIS_IPHONE_Xr ==YES || SOIS_IPHONE_Xs== YES || SOIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define SOHeightStatusBar ((SOIS_IPHONE_X==YES || SOIS_IPHONE_Xr ==YES || SOIS_IPHONE_Xs== YES || SOIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define SOHeightNavBar ((SOIS_IPHONE_X==YES || SOIS_IPHONE_Xr ==YES || SOIS_IPHONE_Xs== YES || SOIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define SOHeightTabBar ((SOIS_IPHONE_X==YES || SOIS_IPHONE_Xr ==YES || SOIS_IPHONE_Xs == YES || SOIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define SOHeightNavContentBar ((SOIS_IPHONE_X == YES || SOIS_IPHONE_Xr ==YES || SOIS_IPHONE_Xs == YES || SOIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* SOglobal_h */
