//
//  AHglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef AHglobal_h
#define AHglobal_h
#import <AFNetworking/AFNetworking.h>
#import "AHNDHTTPClient.h"
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+AHNJ.h"
#import "AHHBTool.h"
#import "CalendarTool.h"
#import "AHUIUtilities.h"
#import "AHTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define AHH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define AHKeyWindow [UIApplication sharedApplication].keyWindow
#define AHWIDTH [UIScreen mainScreen].bounds.size.width
#define AHHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define AHisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define AHkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !AHisPad : NO)
//判断iPhone5系列
#define AHkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !AHisPad : NO)
//判断iPhone6系列
#define AHkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !AHisPad : NO)
//判断iphone6+系列
#define AHkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !AHisPad : NO)
//判断iPhoneX
#define AHIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AHisPad : NO)
//判断iPHoneXr
#define AHIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !AHisPad : NO)
//判断iPhoneXs
#define AHIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AHisPad : NO)
//判断iPhoneXs Max
#define AHIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !AHisPad : NO)
//iPhoneX系列
#define AHISIPHONEX ((AHIS_IPHONE_X==YES || AHIS_IPHONE_Xr ==YES || AHIS_IPHONE_Xs== YES || AHIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define AHHeightStatusBar ((AHIS_IPHONE_X==YES || AHIS_IPHONE_Xr ==YES || AHIS_IPHONE_Xs== YES || AHIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define AHHeightNavBar ((AHIS_IPHONE_X==YES || AHIS_IPHONE_Xr ==YES || AHIS_IPHONE_Xs== YES || AHIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define AHHeightTabBar ((AHIS_IPHONE_X==YES || AHIS_IPHONE_Xr ==YES || AHIS_IPHONE_Xs == YES || AHIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define AHHeightNavContentBar ((AHIS_IPHONE_X == YES || AHIS_IPHONE_Xr ==YES || AHIS_IPHONE_Xs == YES || AHIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* AHglobal_h */
