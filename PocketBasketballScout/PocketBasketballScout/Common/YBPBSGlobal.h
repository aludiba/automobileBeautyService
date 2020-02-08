//
//  YBPBSglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef YBPBSglobal_h
#define YBPBSglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+YBPBSNJ.h"
#import "YBPBSHBTool.h"
#import "CalendarTool.h"
#import "YBPBSUIUtilities.h"
#import "YBPBSTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define YBPBSH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define YBPBSKeyWindow [UIApplication sharedApplication].keyWindow
#define YBPBSWIDTH [UIScreen mainScreen].bounds.size.width
#define YBPBSHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define YBPBSisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define YBPBSkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !YBPBSisPad : NO)
//判断iPhone5系列
#define YBPBSkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !YBPBSisPad : NO)
//判断iPhone6系列
#define YBPBSkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !YBPBSisPad : NO)
//判断iphone6+系列
#define YBPBSkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !YBPBSisPad : NO)
//判断iPhoneX
#define YBPBSIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !YBPBSisPad : NO)
//判断iPHoneXr
#define YBPBSIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !YBPBSisPad : NO)
//判断iPhoneXs
#define YBPBSIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !YBPBSisPad : NO)
//判断iPhoneXs Max
#define YBPBSIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !YBPBSisPad : NO)
//iPhoneX系列
#define YBPBSISIPHONEX ((YBPBSIS_IPHONE_X==YES || YBPBSIS_IPHONE_Xr ==YES || YBPBSIS_IPHONE_Xs== YES || YBPBSIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define YBPBSHeightStatusBar ((YBPBSIS_IPHONE_X==YES || YBPBSIS_IPHONE_Xr ==YES || YBPBSIS_IPHONE_Xs== YES || YBPBSIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define YBPBSHeightNavBar ((YBPBSIS_IPHONE_X==YES || YBPBSIS_IPHONE_Xr ==YES || YBPBSIS_IPHONE_Xs== YES || YBPBSIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define YBPBSHeightTabBar ((YBPBSIS_IPHONE_X==YES || YBPBSIS_IPHONE_Xr ==YES || YBPBSIS_IPHONE_Xs == YES || YBPBSIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define YBPBSHeightNavContentBar ((YBPBSIS_IPHONE_X == YES || YBPBSIS_IPHONE_Xr ==YES || YBPBSIS_IPHONE_Xs == YES || YBPBSIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* YBPBSglobal_h */
