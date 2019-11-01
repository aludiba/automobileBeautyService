//
//  PHglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef PHglobal_h
#define PHglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "PHNDHTTPClient.h"
#import "MBProgressHUD+PHNJ.h"
#import "PHHBTool.h"
#import "CalendarTool.h"
#import "PHUIUtilities.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
#define LAST_RUN_VERSION_KEY @"Last_Run_Version_Key"
/**颜色*/
#define FONTSIZE @"fontSize"
#define FONTRGB @"fontRGB"
#define THEMERGB @"themeRGB"
#define REMINDWRITE @"RemindWrite"
#define PHH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define PHKeyWindow [UIApplication sharedApplication].keyWindow
#define PHWIDTH [UIScreen mainScreen].bounds.size.width
#define PHHEIPHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define PHisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define PHkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !PHisPad : NO)
//判断iPhone5系列
#define PHkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !PHisPad : NO)
//判断iPhone6系列
#define PHkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !PHisPad : NO)
//判断iphone6+系列
#define PHkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !PHisPad : NO)
//判断iPhoneX
#define PHIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PHisPad : NO)
//判断iPHoneXr
#define PHIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !PHisPad : NO)
//判断iPhoneXs
#define PHIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PHisPad : NO)
//判断iPhoneXs Max
#define PHIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !PHisPad : NO)
//iPhoneX系列
#define PHISIPHONEX ((PHIS_IPHONE_X==YES || PHIS_IPHONE_Xr ==YES || PHIS_IPHONE_Xs== YES || PHIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define PHHeightStatusBar ((PHIS_IPHONE_X==YES || PHIS_IPHONE_Xr ==YES || PHIS_IPHONE_Xs== YES || PHIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define PHHeightNavBar ((PHIS_IPHONE_X==YES || PHIS_IPHONE_Xr ==YES || PHIS_IPHONE_Xs== YES || PHIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define PHHeightTabBar ((PHIS_IPHONE_X==YES || PHIS_IPHONE_Xr ==YES || PHIS_IPHONE_Xs== YES || PHIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define PHHeightNavContentBar ((PHIS_IPHONE_X==YES || PHIS_IPHONE_Xr ==YES || PHIS_IPHONE_Xs== YES || PHIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* PHglobal_h */
