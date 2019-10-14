//
//  QSglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef QSglobal_h
#define QSglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "QSNDHTTPClient.h"
#import "MBProgressHUD+QSNJ.h"
#import "QSHBTool.h"
#import "CalendarTool.h"
#import "QSUIUtilities.h"
#import "QSTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define QSH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define QSKeyWindow [UIApplication sharedApplication].keyWindow
#define QSWIDTH [UIScreen mainScreen].bounds.size.width
#define QSHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define QSisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define QSkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !QSisPad : NO)
//判断iPhone5系列
#define QSkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !QSisPad : NO)
//判断iPhone6系列
#define QSkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !QSisPad : NO)
//判断iphone6+系列
#define QSkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !QSisPad : NO)
//判断iPhoneX
#define QSIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !QSisPad : NO)
//判断iPHoneXr
#define QSIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !QSisPad : NO)
//判断iPhoneXs
#define QSIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !QSisPad : NO)
//判断iPhoneXs Max
#define QSIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !QSisPad : NO)
//iPhoneX系列
#define QSISIPHONEX ((QSIS_IPHONE_X==YES || QSIS_IPHONE_Xr ==YES || QSIS_IPHONE_Xs== YES || QSIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define QSHeightStatusBar ((QSIS_IPHONE_X==YES || QSIS_IPHONE_Xr ==YES || QSIS_IPHONE_Xs== YES || QSIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define QSHeightNavBar ((QSIS_IPHONE_X==YES || QSIS_IPHONE_Xr ==YES || QSIS_IPHONE_Xs== YES || QSIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define QSHeightTabBar ((QSIS_IPHONE_X==YES || QSIS_IPHONE_Xr ==YES || QSIS_IPHONE_Xs == YES || QSIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define QSHeightNavContentBar ((QSIS_IPHONE_X == YES || QSIS_IPHONE_Xr ==YES || QSIS_IPHONE_Xs == YES || QSIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* QSglobal_h */
