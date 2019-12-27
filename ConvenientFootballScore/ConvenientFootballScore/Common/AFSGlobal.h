//
//  AFSglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef AFSglobal_h
#define AFSglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "AFSNDHTTPClient.h"
#import "MBProgressHUD+AFSNJ.h"
#import "AFSHBTool.h"
#import "CalendarTool.h"
#import "AFSUIUtilities.h"
#import "AFSTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define AFSH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define AFSKeyWindow [UIApplication sharedApplication].keyWindow
#define AFSWIDTH [UIScreen mainScreen].bounds.size.width
#define AFSHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define AFSisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define AFSkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !AFSisPad : NO)
//判断iPhone5系列
#define AFSkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !AFSisPad : NO)
//判断iPhone6系列
#define AFSkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !AFSisPad : NO)
//判断iphone6+系列
#define AFSkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !AFSisPad : NO)
//判断iPhoneX
#define AFSIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AFSisPad : NO)
//判断iPHoneXr
#define AFSIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !AFSisPad : NO)
//判断iPhoneXs
#define AFSIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AFSisPad : NO)
//判断iPhoneXs Max
#define AFSIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !AFSisPad : NO)
//iPhoneX系列
#define AFSISIPHONEX ((AFSIS_IPHONE_X==YES || AFSIS_IPHONE_Xr ==YES || AFSIS_IPHONE_Xs== YES || AFSIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define AFSHeightStatusBar ((AFSIS_IPHONE_X==YES || AFSIS_IPHONE_Xr ==YES || AFSIS_IPHONE_Xs== YES || AFSIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define AFSHeightNavBar ((AFSIS_IPHONE_X==YES || AFSIS_IPHONE_Xr ==YES || AFSIS_IPHONE_Xs== YES || AFSIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define AFSHeightTabBar ((AFSIS_IPHONE_X==YES || AFSIS_IPHONE_Xr ==YES || AFSIS_IPHONE_Xs == YES || AFSIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define AFSHeightNavContentBar ((AFSIS_IPHONE_X == YES || AFSIS_IPHONE_Xr ==YES || AFSIS_IPHONE_Xs == YES || AFSIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* AFSglobal_h */
