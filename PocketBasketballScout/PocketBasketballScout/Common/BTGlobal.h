//
//  BTglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef BTglobal_h
#define BTglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+BTNJ.h"
#import "BTHBTool.h"
#import "CalendarTool.h"
#import "BTUIUtilities.h"
#import "BTTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define BTH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define BTKeyWindow [UIApplication sharedApplication].keyWindow
#define BTWIDTH [UIScreen mainScreen].bounds.size.width
#define BTHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define BTisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define BTkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !BTisPad : NO)
//判断iPhone5系列
#define BTkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !BTisPad : NO)
//判断iPhone6系列
#define BTkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !BTisPad : NO)
//判断iphone6+系列
#define BTkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !BTisPad : NO)
//判断iPhoneX
#define BTIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !BTisPad : NO)
//判断iPHoneXr
#define BTIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !BTisPad : NO)
//判断iPhoneXs
#define BTIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !BTisPad : NO)
//判断iPhoneXs Max
#define BTIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !BTisPad : NO)
//iPhoneX系列
#define BTISIPHONEX ((BTIS_IPHONE_X==YES || BTIS_IPHONE_Xr ==YES || BTIS_IPHONE_Xs== YES || BTIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define BTHeightStatusBar ((BTIS_IPHONE_X==YES || BTIS_IPHONE_Xr ==YES || BTIS_IPHONE_Xs== YES || BTIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define BTHeightNavBar ((BTIS_IPHONE_X==YES || BTIS_IPHONE_Xr ==YES || BTIS_IPHONE_Xs== YES || BTIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define BTHeightTabBar ((BTIS_IPHONE_X==YES || BTIS_IPHONE_Xr ==YES || BTIS_IPHONE_Xs == YES || BTIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define BTHeightNavContentBar ((BTIS_IPHONE_X == YES || BTIS_IPHONE_Xr ==YES || BTIS_IPHONE_Xs == YES || BTIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* BTglobal_h */
