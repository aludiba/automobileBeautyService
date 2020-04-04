//
//  KAglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef KAglobal_h
#define KAglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <AFNetworking/AFNetworking.h>
#import "KANDHTTPClient.h"
#import "MBProgressHUD+KANJ.h"
#import "KAHBTool.h"
#import "CalendarTool.h"
#import "KAUIUtilities.h"
#import "KATabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define KAH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define KAKeyWindow [UIApplication sharedApplication].keyWindow
#define KAWIDTH [UIScreen mainScreen].bounds.size.width
#define KAHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define KAisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define KAkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !KAisPad : NO)
//判断iPhone5系列
#define KAkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !KAisPad : NO)
//判断iPhone6系列
#define KAkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !KAisPad : NO)
//判断iphone6+系列
#define KAkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !KAisPad : NO)
//判断iPhoneX
#define KAIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !KAisPad : NO)
//判断iPHoneXr
#define KAIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !KAisPad : NO)
//判断iPhoneXs
#define KAIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !KAisPad : NO)
//判断iPhoneXs Max
#define KAIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !KAisPad : NO)
//iPhoneX系列
#define KAISIPHONEX ((KAIS_IPHONE_X==YES || KAIS_IPHONE_Xr ==YES || KAIS_IPHONE_Xs== YES || KAIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define KAHeightStatusBar ((KAIS_IPHONE_X==YES || KAIS_IPHONE_Xr ==YES || KAIS_IPHONE_Xs== YES || KAIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define KAHeightNavBar ((KAIS_IPHONE_X==YES || KAIS_IPHONE_Xr ==YES || KAIS_IPHONE_Xs== YES || KAIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define KAHeightTabBar ((KAIS_IPHONE_X==YES || KAIS_IPHONE_Xr ==YES || KAIS_IPHONE_Xs == YES || KAIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define KAHeightNavContentBar ((KAIS_IPHONE_X == YES || KAIS_IPHONE_Xr ==YES || KAIS_IPHONE_Xs == YES || KAIS_IPHONE_Xs_Max == YES)?34.0f: 0)
typedef NS_ENUM(NSInteger, KACargoType) {
    KACargoTypeWaitReceiving,
    KACargoTypeWaitLoading,
    KACargoTypeWaitDelivery,
    KACargoTypeCompleted,
};
#endif /* KAglobal_h */
