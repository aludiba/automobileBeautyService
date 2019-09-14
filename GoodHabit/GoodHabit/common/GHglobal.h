//
//  GHglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef GHglobal_h
#define GHglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "GHNDHTTPClient.h"
#import "MBProgressHUD+GHNJ.h"
#import "GHHBTool.h"
#import "CalendarTool.h"
#import "GHUIUtilities.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define FONTSIZE @"fontSize"
#define FONTRGB @"fontRGB"
#define THEMERGB @"themeRGB"
#define REMINDWRITE @"RemindWrite"
#define GHH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define GHKeyWindow [UIApplication sharedApplication].keyWindow
#define GHWIDTH [UIScreen mainScreen].bounds.size.width
#define GHHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define GHisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define GHkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !GHisPad : NO)
//判断iPhone5系列
#define GHkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !GHisPad : NO)
//判断iPhone6系列
#define GHkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !GHisPad : NO)
//判断iphone6+系列
#define GHkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !GHisPad : NO)
//判断iPhoneX
#define GHIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !GHisPad : NO)
//判断iPHoneXr
#define GHIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !GHisPad : NO)
//判断iPhoneXs
#define GHIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !GHisPad : NO)
//判断iPhoneXs Max
#define GHIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !GHisPad : NO)
//iPhoneX系列
#define GHISIPHONEX ((GHIS_IPHONE_X==YES || GHIS_IPHONE_Xr ==YES || GHIS_IPHONE_Xs== YES || GHIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define GHHeightStatusBar ((GHIS_IPHONE_X==YES || GHIS_IPHONE_Xr ==YES || GHIS_IPHONE_Xs== YES || GHIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define GHHeightNavBar ((GHIS_IPHONE_X==YES || GHIS_IPHONE_Xr ==YES || GHIS_IPHONE_Xs== YES || GHIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define GHHeightTabBar ((GHIS_IPHONE_X==YES || GHIS_IPHONE_Xr ==YES || GHIS_IPHONE_Xs== YES || GHIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define GHHeightNavContentBar ((GHIS_IPHONE_X==YES || GHIS_IPHONE_Xr ==YES || GHIS_IPHONE_Xs== YES || GHIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* GHglobal_h */
