//
//  BGglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef BGglobal_h
#define BGglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+BGNJ.h"
#import "BGHBTool.h"
#import "CalendarTool.h"
#import "BGUIUtilities.h"
#import "BGTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define BGH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define BGKeyWindow [UIApplication sharedApplication].keyWindow
#define BGWIDTH [UIScreen mainScreen].bounds.size.width
#define BGHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define BGisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define BGkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !BGisPad : NO)
//判断iPhone5系列
#define BGkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !BGisPad : NO)
//判断iPhone6系列
#define BGkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !BGisPad : NO)
//判断iphone6+系列
#define BGkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !BGisPad : NO)
//判断iPhoneX
#define BGIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !BGisPad : NO)
//判断iPHoneXr
#define BGIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !BGisPad : NO)
//判断iPhoneXs
#define BGIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !BGisPad : NO)
//判断iPhoneXs Max
#define BGIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !BGisPad : NO)
//iPhoneX系列
#define BGISIPHONEX ((BGIS_IPHONE_X==YES || BGIS_IPHONE_Xr ==YES || BGIS_IPHONE_Xs== YES || BGIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define BGHeightStatusBar ((BGIS_IPHONE_X==YES || BGIS_IPHONE_Xr ==YES || BGIS_IPHONE_Xs== YES || BGIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define BGHeightNavBar ((BGIS_IPHONE_X==YES || BGIS_IPHONE_Xr ==YES || BGIS_IPHONE_Xs== YES || BGIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define BGHeightTabBar ((BGIS_IPHONE_X==YES || BGIS_IPHONE_Xr ==YES || BGIS_IPHONE_Xs == YES || BGIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define BGHeightNavContentBar ((BGIS_IPHONE_X == YES || BGIS_IPHONE_Xr ==YES || BGIS_IPHONE_Xs == YES || BGIS_IPHONE_Xs_Max == YES)?34.0f: 0)
typedef NS_ENUM(NSInteger, BGCargoType) {
    BGCargoTypeWaitReceiving,
    BGCargoTypeWaitLoading,
    BGCargoTypeWaitDelivery,
    BGCargoTypeCompleted,
};
#endif /* BGglobal_h */
