//
//  ALglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef FBglobal_h
#define FBglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+FBNJ.h"
#import "FBHBTool.h"
#import "FBUIUtilities.h"
#import "FBTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define FBH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define FBKeyWindow [UIApplication sharedApplication].keyWindow
#define FBWIDTH [UIScreen mainScreen].bounds.size.width
#define FBHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define FBisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define FBkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !FBisPad : NO)
//判断iPhone5系列
#define FBkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !FBisPad : NO)
//判断iPhone6系列
#define FBkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !FBisPad : NO)
//判断iphone6+系列
#define FBkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !FBisPad : NO)
//判断iPhoneX
#define FBIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !FBisPad : NO)
//判断iPHoneXr
#define FBIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !FBisPad : NO)
//判断iPhoneXs
#define FBIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !FBisPad : NO)
//判断iPhoneXs Max
#define FBIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !FBisPad : NO)
//iPhoneX系列
#define FBISIPHONEX ((FBIS_IPHONE_X==YES || FBIS_IPHONE_Xr ==YES || FBIS_IPHONE_Xs== YES || FBIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define FBHeightStatusBar ((FBIS_IPHONE_X==YES || FBIS_IPHONE_Xr ==YES || FBIS_IPHONE_Xs== YES || FBIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define FBHeightNavBar ((FBIS_IPHONE_X==YES || FBIS_IPHONE_Xr ==YES || FBIS_IPHONE_Xs== YES || FBIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define FBHeightTabBar ((FBIS_IPHONE_X==YES || FBIS_IPHONE_Xr ==YES || FBIS_IPHONE_Xs == YES || FBIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define FBHeightNavContentBar ((FBIS_IPHONE_X == YES || FBIS_IPHONE_Xr ==YES || FBIS_IPHONE_Xs == YES || FBIS_IPHONE_Xs_Max == YES)?34.0f: 0)
typedef NS_ENUM(NSInteger, FBCargoType) {
    FBCargoTypeWaitReceiving,
    FBCargoTypeWaitLoading,
    FBCargoTypeWaitDelivery,
    FBCargoTypeCompleted,
};
#endif /* ALglobal_h */
