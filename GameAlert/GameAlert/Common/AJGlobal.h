//
//  AJglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef AJglobal_h
#define AJglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <AFNetworking/AFNetworking.h>
#import "AJNDHTTPClient.h"
#import "MBProgressHUD+AJNJ.h"
#import "AJHBTool.h"
#import "CalendarTool.h"
#import "AJUIUtilities.h"
#import "AJTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define AJH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define AJKeyWindow [UIApplication sharedApplication].keyWindow
#define AJWIDTH [UIScreen mainScreen].bounds.size.width
#define AJHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define AJisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define AJkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !AJisPad : NO)
//判断iPhone5系列
#define AJkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !AJisPad : NO)
//判断iPhone6系列
#define AJkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !AJisPad : NO)
//判断iphone6+系列
#define AJkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !AJisPad : NO)
//判断iPhoneX
#define AJIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AJisPad : NO)
//判断iPHoneXr
#define AJIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !AJisPad : NO)
//判断iPhoneXs
#define AJIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AJisPad : NO)
//判断iPhoneXs Max
#define AJIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !AJisPad : NO)
//iPhoneX系列
#define AJISIPHONEX ((AJIS_IPHONE_X==YES || AJIS_IPHONE_Xr ==YES || AJIS_IPHONE_Xs== YES || AJIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define AJHeightStatusBar ((AJIS_IPHONE_X==YES || AJIS_IPHONE_Xr ==YES || AJIS_IPHONE_Xs== YES || AJIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define AJHeightNavBar ((AJIS_IPHONE_X==YES || AJIS_IPHONE_Xr ==YES || AJIS_IPHONE_Xs== YES || AJIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define AJHeightTabBar ((AJIS_IPHONE_X==YES || AJIS_IPHONE_Xr ==YES || AJIS_IPHONE_Xs == YES || AJIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define AJHeightNavContentBar ((AJIS_IPHONE_X == YES || AJIS_IPHONE_Xr ==YES || AJIS_IPHONE_Xs == YES || AJIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* AJglobal_h */
