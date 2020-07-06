//
//  ALglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef LBglobal_h
#define LBglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+LBNJ.h"
#import "LBHBTool.h"
#import "LBUIUtilities.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define TingYunAPPKey @"9eLB6a11cd3f4ba4b0182718541643a9"
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define LBH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define LBKeyWindow [UIApplication sharedApplication].keyWindow
#define LBWIDTH [UIScreen mainScreen].bounds.size.width
#define LBHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define LBisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define LBkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !LBisPad : NO)
//判断iPhone5系列
#define LBkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !LBisPad : NO)
//判断iPhone6系列
#define LBkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !LBisPad : NO)
//判断iphone6+系列
#define LBkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !LBisPad : NO)
//判断iPhoneX
#define LBIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !LBisPad : NO)
//判断iPHoneXr
#define LBIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !LBisPad : NO)
//判断iPhoneXs
#define LBIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !LBisPad : NO)
//判断iPhoneXs Max
#define LBIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !LBisPad : NO)
//iPhoneX系列
#define LBISIPHONEX ((LBIS_IPHONE_X==YES || LBIS_IPHONE_Xr ==YES || LBIS_IPHONE_Xs== YES || LBIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define LBHeightStatusBar ((LBIS_IPHONE_X==YES || LBIS_IPHONE_Xr ==YES || LBIS_IPHONE_Xs== YES || LBIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define LBHeightNavBar ((LBIS_IPHONE_X==YES || LBIS_IPHONE_Xr ==YES || LBIS_IPHONE_Xs== YES || LBIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define LBHeightTabBar ((LBIS_IPHONE_X==YES || LBIS_IPHONE_Xr ==YES || LBIS_IPHONE_Xs == YES || LBIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define LBHeightNavContentBar ((LBIS_IPHONE_X == YES || LBIS_IPHONE_Xr ==YES || LBIS_IPHONE_Xs == YES || LBIS_IPHONE_Xs_Max == YES)?34.0f: 0)
typedef NS_ENUM(NSInteger, LBCargoType) {
    LBCargoTypeWaitReceiving,
    LBCargoTypeWaitLoading,
    LBCargoTypeWaitDelivery,
    LBCargoTypeCompleted,
};
#endif /* ALglobal_h */
