//
//  WAglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef WAglobal_h
#define WAglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "WANDHTTPClient.h"
#import "MBProgressHUD+WANJ.h"
#import "WAHBTool.h"
#import "CalendarTool.h"
#import "WAUIUtilities.h"
#import "WATabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define WAH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define WAKeyWindow [UIApplication sharedApplication].keyWindow
#define WAWIDTH [UIScreen mainScreen].bounds.size.width
#define WAHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define WAisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define WAkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !WAisPad : NO)
//判断iPhone5系列
#define WAkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !WAisPad : NO)
//判断iPhone6系列
#define WAkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !WAisPad : NO)
//判断iphone6+系列
#define WAkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !WAisPad : NO)
//判断iPhoneX
#define WAIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !WAisPad : NO)
//判断iPHoneXr
#define WAIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !WAisPad : NO)
//判断iPhoneXs
#define WAIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !WAisPad : NO)
//判断iPhoneXs Max
#define WAIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !WAisPad : NO)
//iPhoneX系列
#define WAISIPHONEX ((WAIS_IPHONE_X==YES || WAIS_IPHONE_Xr ==YES || WAIS_IPHONE_Xs== YES || WAIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define WAHeightStatusBar ((WAIS_IPHONE_X==YES || WAIS_IPHONE_Xr ==YES || WAIS_IPHONE_Xs== YES || WAIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define WAHeightNavBar ((WAIS_IPHONE_X==YES || WAIS_IPHONE_Xr ==YES || WAIS_IPHONE_Xs== YES || WAIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define WAHeightTabBar ((WAIS_IPHONE_X==YES || WAIS_IPHONE_Xr ==YES || WAIS_IPHONE_Xs == YES || WAIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define WAHeightNavContentBar ((WAIS_IPHONE_X == YES || WAIS_IPHONE_Xr ==YES || WAIS_IPHONE_Xs == YES || WAIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* WAglobal_h */
