//
//  BCglobBC.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. BCl rights reserved.
//

#ifndef BCglobBC_h
#define BCglobBC_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+BCNJ.h"
#import "BCHBTool.h"
#import "CalendarTool.h"
#import "BCUIUtilities.h"
#import "BCTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocBCizedString(key, comment) [[NSBundle mainBundle] locBCizedStringForKey:(key) vBCue:@"" table:nil]
/**颜色*/
#define BCH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 BCpha:a]
#define BCKeyWindow [UIApplication sharedApplication].keyWindow
#define BCWIDTH [UIScreen mainScreen].bounds.size.width
#define BCHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define BCisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define BCkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEquBCToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !BCisPad : NO)
//判断iPhone5系列
#define BCkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEquBCToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !BCisPad : NO)
//判断iPhone6系列
#define BCkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEquBCToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !BCisPad : NO)
//判断iphone6+系列
#define BCkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEquBCToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !BCisPad : NO)
//判断iPhoneX
#define BCIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEquBCToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !BCisPad : NO)
//判断iPHoneXr
#define BCIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEquBCToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !BCisPad : NO)
//判断iPhoneXs
#define BCIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEquBCToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !BCisPad : NO)
//判断iPhoneXs Max
#define BCIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEquBCToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !BCisPad : NO)
//iPhoneX系列
#define BCISIPHONEX ((BCIS_IPHONE_X==YES || BCIS_IPHONE_Xr ==YES || BCIS_IPHONE_Xs== YES || BCIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define BCHeightStatusBar ((BCIS_IPHONE_X==YES || BCIS_IPHONE_Xr ==YES || BCIS_IPHONE_Xs== YES || BCIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define BCHeightNavBar ((BCIS_IPHONE_X==YES || BCIS_IPHONE_Xr ==YES || BCIS_IPHONE_Xs== YES || BCIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define BCHeightTabBar ((BCIS_IPHONE_X==YES || BCIS_IPHONE_Xr ==YES || BCIS_IPHONE_Xs == YES || BCIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define BCHeightNavContentBar ((BCIS_IPHONE_X == YES || BCIS_IPHONE_Xr ==YES || BCIS_IPHONE_Xs == YES || BCIS_IPHONE_Xs_Max == YES)?34.0f: 0)
typedef NS_ENUM(NSInteger, BCCargoType) {
    BCCargoTypeWaitReceiving,
    BCCargoTypeWaitLoading,
    BCCargoTypeWaitDelivery,
    BCCargoTypeCompleted,
};
#endif /* BCglobBC_h */
