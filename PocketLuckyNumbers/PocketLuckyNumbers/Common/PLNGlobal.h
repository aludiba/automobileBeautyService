//
//  PLNglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef PLNglobal_h
#define PLNglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "PLNNDHTTPClient.h"
#import "MBProgressHUD+PLNNJ.h"
#import "PLNHBTool.h"
#import "CalendarTool.h"
#import "PLNUIUtilities.h"
#import "PLNTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define PLNH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define PLNKeyWindow [UIApplication sharedApplication].keyWindow
#define PLNWIDTH [UIScreen mainScreen].bounds.size.width
#define PLNHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define PLNisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define PLNkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !PLNisPad : NO)
//判断iPhone5系列
#define PLNkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !PLNisPad : NO)
//判断iPhone6系列
#define PLNkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !PLNisPad : NO)
//判断iphone6+系列
#define PLNkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !PLNisPad : NO)
//判断iPhoneX
#define PLNIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PLNisPad : NO)
//判断iPHoneXr
#define PLNIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !PLNisPad : NO)
//判断iPhoneXs
#define PLNIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PLNisPad : NO)
//判断iPhoneXs Max
#define PLNIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !PLNisPad : NO)
//iPhoneX系列
#define PLNISIPHONEX ((PLNIS_IPHONE_X==YES || PLNIS_IPHONE_Xr ==YES || PLNIS_IPHONE_Xs== YES || PLNIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define PLNHeightStatusBar ((PLNIS_IPHONE_X==YES || PLNIS_IPHONE_Xr ==YES || PLNIS_IPHONE_Xs== YES || PLNIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define PLNHeightNavBar ((PLNIS_IPHONE_X==YES || PLNIS_IPHONE_Xr ==YES || PLNIS_IPHONE_Xs== YES || PLNIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define PLNHeightTabBar ((PLNIS_IPHONE_X==YES || PLNIS_IPHONE_Xr ==YES || PLNIS_IPHONE_Xs == YES || PLNIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define PLNHeightNavContentBar ((PLNIS_IPHONE_X == YES || PLNIS_IPHONE_Xr ==YES || PLNIS_IPHONE_Xs == YES || PLNIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* PLNglobal_h */
