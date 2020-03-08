//
//  ADglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef ADglobal_h
#define ADglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+ADNJ.h"
#import "ADHBTool.h"
#import "CalendarTool.h"
#import "ADUIUtilities.h"
#import "ADTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define ADH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define ADKeyWindow [UIApplication sharedApplication].keyWindow
#define ADWIDTH [UIScreen mainScreen].bounds.size.width
#define ADHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define ADisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define ADkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !ADisPad : NO)
//判断iPhone5系列
#define ADkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !ADisPad : NO)
//判断iPhone6系列
#define ADkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !ADisPad : NO)
//判断iphone6+系列
#define ADkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !ADisPad : NO)
//判断iPhoneX
#define ADIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !ADisPad : NO)
//判断iPHoneXr
#define ADIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !ADisPad : NO)
//判断iPhoneXs
#define ADIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !ADisPad : NO)
//判断iPhoneXs Max
#define ADIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !ADisPad : NO)
//iPhoneX系列
#define ADISIPHONEX ((ADIS_IPHONE_X==YES || ADIS_IPHONE_Xr ==YES || ADIS_IPHONE_Xs== YES || ADIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define ADHeightStatusBar ((ADIS_IPHONE_X==YES || ADIS_IPHONE_Xr ==YES || ADIS_IPHONE_Xs== YES || ADIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define ADHeightNavBar ((ADIS_IPHONE_X==YES || ADIS_IPHONE_Xr ==YES || ADIS_IPHONE_Xs== YES || ADIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define ADHeightTabBar ((ADIS_IPHONE_X==YES || ADIS_IPHONE_Xr ==YES || ADIS_IPHONE_Xs == YES || ADIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define ADHeightNavContentBar ((ADIS_IPHONE_X == YES || ADIS_IPHONE_Xr ==YES || ADIS_IPHONE_Xs == YES || ADIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* ADglobal_h */
