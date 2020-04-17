//
//  ALglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef ALglobal_h
#define ALglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+ALNJ.h"
#import "ALHBTool.h"
#import "CalendarTool.h"
#import "ALUIUtilities.h"
#import "ALTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define ALH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define ALKeyWindow [UIApplication sharedApplication].keyWindow
#define ALWIDTH [UIScreen mainScreen].bounds.size.width
#define ALHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define ALisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define ALkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !ALisPad : NO)
//判断iPhone5系列
#define ALkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !ALisPad : NO)
//判断iPhone6系列
#define ALkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !ALisPad : NO)
//判断iphone6+系列
#define ALkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !ALisPad : NO)
//判断iPhoneX
#define ALIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !ALisPad : NO)
//判断iPHoneXr
#define ALIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !ALisPad : NO)
//判断iPhoneXs
#define ALIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !ALisPad : NO)
//判断iPhoneXs Max
#define ALIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !ALisPad : NO)
//iPhoneX系列
#define ALISIPHONEX ((ALIS_IPHONE_X==YES || ALIS_IPHONE_Xr ==YES || ALIS_IPHONE_Xs== YES || ALIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define ALHeightStatusBar ((ALIS_IPHONE_X==YES || ALIS_IPHONE_Xr ==YES || ALIS_IPHONE_Xs== YES || ALIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define ALHeightNavBar ((ALIS_IPHONE_X==YES || ALIS_IPHONE_Xr ==YES || ALIS_IPHONE_Xs== YES || ALIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define ALHeightTabBar ((ALIS_IPHONE_X==YES || ALIS_IPHONE_Xr ==YES || ALIS_IPHONE_Xs == YES || ALIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define ALHeightNavContentBar ((ALIS_IPHONE_X == YES || ALIS_IPHONE_Xr ==YES || ALIS_IPHONE_Xs == YES || ALIS_IPHONE_Xs_Max == YES)?34.0f: 0)
typedef NS_ENUM(NSInteger, ALCargoType) {
    ALCargoTypeWaitReceiving,
    ALCargoTypeWaitLoading,
    ALCargoTypeWaitDelivery,
    ALCargoTypeCompleted,
};
#endif /* ALglobal_h */
