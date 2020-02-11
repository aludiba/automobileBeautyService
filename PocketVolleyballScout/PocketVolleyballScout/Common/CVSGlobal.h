//
//  CVSglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef CVSglobal_h
#define CVSglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "CVSNDHTTPClient.h"
#import "MBProgressHUD+CVSNJ.h"
#import "CVSHBTool.h"
#import "CalendarTool.h"
#import "CVSUIUtilities.h"
#import "CVSTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
typedef NS_ENUM(NSInteger, scorecardWhichWinType) {
    scorecardWhichWinTypeMain,
    scorecardWhichWinTypeGuest,
};
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define CVSH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define CVSKeyWindow [UIApplication sharedApplication].keyWindow
#define CVSWIDTH [UIScreen mainScreen].bounds.size.width
#define CVSHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define CVSisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define CVSkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !CVSisPad : NO)
//判断iPhone5系列
#define CVSkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !CVSisPad : NO)
//判断iPhone6系列
#define CVSkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !CVSisPad : NO)
//判断iphone6+系列
#define CVSkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !CVSisPad : NO)
//判断iPhoneX
#define CVSIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CVSisPad : NO)
//判断iPHoneXr
#define CVSIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !CVSisPad : NO)
//判断iPhoneXs
#define CVSIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CVSisPad : NO)
//判断iPhoneXs Max
#define CVSIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !CVSisPad : NO)
//iPhoneX系列
#define CVSISIPHONEX ((CVSIS_IPHONE_X==YES || CVSIS_IPHONE_Xr ==YES || CVSIS_IPHONE_Xs== YES || CVSIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define CVSHeightStatusBar ((CVSIS_IPHONE_X==YES || CVSIS_IPHONE_Xr ==YES || CVSIS_IPHONE_Xs== YES || CVSIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define CVSHeightNavBar ((CVSIS_IPHONE_X==YES || CVSIS_IPHONE_Xr ==YES || CVSIS_IPHONE_Xs== YES || CVSIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define CVSHeightTabBar ((CVSIS_IPHONE_X==YES || CVSIS_IPHONE_Xr ==YES || CVSIS_IPHONE_Xs == YES || CVSIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define CVSHeightNavContentBar ((CVSIS_IPHONE_X == YES || CVSIS_IPHONE_Xr ==YES || CVSIS_IPHONE_Xs == YES || CVSIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* CVSglobal_h */
