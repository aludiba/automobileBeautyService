//
//  GAglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef GAglobal_h
#define GAglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "GANDHTTPClient.h"
#import "MBProgressHUD+GANJ.h"
#import "GAHBTool.h"
#import "CalendarTool.h"
#import "GAUIUtilities.h"
#import "GATabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define GAH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define GAKeyWindow [UIApplication sharedApplication].keyWindow
#define GAWIDTH [UIScreen mainScreen].bounds.size.width
#define GAHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define GAisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define GAkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !GAisPad : NO)
//判断iPhone5系列
#define GAkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !GAisPad : NO)
//判断iPhone6系列
#define GAkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !GAisPad : NO)
//判断iphone6+系列
#define GAkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !GAisPad : NO)
//判断iPhoneX
#define GAIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !GAisPad : NO)
//判断iPHoneXr
#define GAIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !GAisPad : NO)
//判断iPhoneXs
#define GAIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !GAisPad : NO)
//判断iPhoneXs Max
#define GAIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !GAisPad : NO)
//iPhoneX系列
#define GAISIPHONEX ((GAIS_IPHONE_X==YES || GAIS_IPHONE_Xr ==YES || GAIS_IPHONE_Xs== YES || GAIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define GAHeightStatusBar ((GAIS_IPHONE_X==YES || GAIS_IPHONE_Xr ==YES || GAIS_IPHONE_Xs== YES || GAIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define GAHeightNavBar ((GAIS_IPHONE_X==YES || GAIS_IPHONE_Xr ==YES || GAIS_IPHONE_Xs== YES || GAIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define GAHeightTabBar ((GAIS_IPHONE_X==YES || GAIS_IPHONE_Xr ==YES || GAIS_IPHONE_Xs == YES || GAIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define GAHeightNavContentBar ((GAIS_IPHONE_X == YES || GAIS_IPHONE_Xr ==YES || GAIS_IPHONE_Xs == YES || GAIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* GAglobal_h */
