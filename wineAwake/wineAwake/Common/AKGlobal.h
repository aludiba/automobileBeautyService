//
//  AKglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef AKglobal_h
#define AKglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "AKNDHTTPClient.h"
#import "MBProgressHUD+AKNJ.h"
#import "AKHBTool.h"
#import "CalendarTool.h"
#import "AKUIUtilities.h"
#import "AKTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define AKH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define AKKeyWindow [UIApplication sharedApplication].keyWindow
#define AKWIDTH [UIScreen mainScreen].bounds.size.width
#define AKHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define AKisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define AKkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !AKisPad : NO)
//判断iPhone5系列
#define AKkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !AKisPad : NO)
//判断iPhone6系列
#define AKkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !AKisPad : NO)
//判断iphone6+系列
#define AKkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !AKisPad : NO)
//判断iPhoneX
#define AKIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AKisPad : NO)
//判断iPHoneXr
#define AKIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !AKisPad : NO)
//判断iPhoneXs
#define AKIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AKisPad : NO)
//判断iPhoneXs Max
#define AKIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !AKisPad : NO)
//iPhoneX系列
#define AKISIPHONEX ((AKIS_IPHONE_X==YES || AKIS_IPHONE_Xr ==YES || AKIS_IPHONE_Xs== YES || AKIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define AKHeightStatusBar ((AKIS_IPHONE_X==YES || AKIS_IPHONE_Xr ==YES || AKIS_IPHONE_Xs== YES || AKIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define AKHeightNavBar ((AKIS_IPHONE_X==YES || AKIS_IPHONE_Xr ==YES || AKIS_IPHONE_Xs== YES || AKIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define AKHeightTabBar ((AKIS_IPHONE_X==YES || AKIS_IPHONE_Xr ==YES || AKIS_IPHONE_Xs == YES || AKIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define AKHeightNavContentBar ((AKIS_IPHONE_X == YES || AKIS_IPHONE_Xr ==YES || AKIS_IPHONE_Xs == YES || AKIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* AKglobal_h */
