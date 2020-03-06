//
//  CAglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef CAglobal_h
#define CAglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "CANDHTTPClient.h"
#import "MBProgressHUD+CANJ.h"
#import "CAHBTool.h"
#import "CalendarTool.h"
#import "CAUIUtilities.h"
#import "CATabBarController.h"
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
#define CAH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define CAKeyWindow [UIApplication sharedApplication].keyWindow
#define CAWIDTH [UIScreen mainScreen].bounds.size.width
#define CAHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define CAisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define CAkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !CAisPad : NO)
//判断iPhone5系列
#define CAkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !CAisPad : NO)
//判断iPhone6系列
#define CAkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !CAisPad : NO)
//判断iphone6+系列
#define CAkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !CAisPad : NO)
//判断iPhoneX
#define CAIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CAisPad : NO)
//判断iPHoneXr
#define CAIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !CAisPad : NO)
//判断iPhoneXs
#define CAIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CAisPad : NO)
//判断iPhoneXs Max
#define CAIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !CAisPad : NO)
//iPhoneX系列
#define CAISIPHONEX ((CAIS_IPHONE_X==YES || CAIS_IPHONE_Xr ==YES || CAIS_IPHONE_Xs== YES || CAIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define CAHeightStatusBar ((CAIS_IPHONE_X==YES || CAIS_IPHONE_Xr ==YES || CAIS_IPHONE_Xs== YES || CAIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define CAHeightNavBar ((CAIS_IPHONE_X==YES || CAIS_IPHONE_Xr ==YES || CAIS_IPHONE_Xs== YES || CAIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define CAHeightTabBar ((CAIS_IPHONE_X==YES || CAIS_IPHONE_Xr ==YES || CAIS_IPHONE_Xs == YES || CAIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define CAHeightNavContentBar ((CAIS_IPHONE_X == YES || CAIS_IPHONE_Xr ==YES || CAIS_IPHONE_Xs == YES || CAIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* CAglobal_h */
