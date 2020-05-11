//
//  ALglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef EBglobal_h
#define EBglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+EBNJ.h"
#import "EBHBTool.h"
#import "EBUIUtilities.h"
#import "EBTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define EBH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define EBKeyWindow [UIApplication sharedApplication].keyWindow
#define EBWIDTH [UIScreen mainScreen].bounds.size.width
#define EBHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define EBisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define EBkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !EBisPad : NO)
//判断iPhone5系列
#define EBkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !EBisPad : NO)
//判断iPhone6系列
#define EBkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !EBisPad : NO)
//判断iphone6+系列
#define EBkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !EBisPad : NO)
//判断iPhoneX
#define EBIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !EBisPad : NO)
//判断iPHoneXr
#define EBIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !EBisPad : NO)
//判断iPhoneXs
#define EBIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !EBisPad : NO)
//判断iPhoneXs Max
#define EBIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !EBisPad : NO)
//iPhoneX系列
#define EBISIPHONEX ((EBIS_IPHONE_X==YES || EBIS_IPHONE_Xr ==YES || EBIS_IPHONE_Xs== YES || EBIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define EBHeightStatusBar ((EBIS_IPHONE_X==YES || EBIS_IPHONE_Xr ==YES || EBIS_IPHONE_Xs== YES || EBIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define EBHeightNavBar ((EBIS_IPHONE_X==YES || EBIS_IPHONE_Xr ==YES || EBIS_IPHONE_Xs== YES || EBIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define EBHeightTabBar ((EBIS_IPHONE_X==YES || EBIS_IPHONE_Xr ==YES || EBIS_IPHONE_Xs == YES || EBIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define EBHeightNavContentBar ((EBIS_IPHONE_X == YES || EBIS_IPHONE_Xr ==YES || EBIS_IPHONE_Xs == YES || EBIS_IPHONE_Xs_Max == YES)?34.0f: 0)
typedef NS_ENUM(NSInteger, EBCargoType) {
    EBCargoTypeWaitReceiving,
    EBCargoTypeWaitLoading,
    EBCargoTypeWaitDelivery,
    EBCargoTypeCompleted,
};
#endif /* ALglobal_h */
