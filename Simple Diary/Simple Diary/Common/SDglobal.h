//
//  SDglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef SDglobal_h
#define SDglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <fmdb/FMDB.h>
#import "SDNDHTTPClient.h"
#import "MBProgressHUD+SDNJ.h"
#import "SDHBTool.h"
#import "MLPhotoImageHelper.h"
#import "CalendarTool.h"
#import "SDUIUtilities.h"
#import "SDButton.h"
#import "SDTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import "JPUSHService.h"
#import <AVOSCloud/AVOSCloud.h>
#import <SafariServices/SafariServices.h>
#ifdef NSFoundationVersionNumber_iOS_9_x_Max
#import <UserNotifications/UserNotifications.h>
#endif
#import <AdSupport/AdSupport.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define FONTSIZE @"fontSize"
#define FONTRGB @"fontRGB"
#define THEMERGB @"themeRGB"
#define REMINDWRITE @"RemindWrite"
#define SDH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define SDKeyWindow [UIApplication sharedApplication].keyWindow
#define SDWIDTH [UIScreen mainScreen].bounds.size.width
#define SDHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define SDisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define SDkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !SDisPad : NO)
//判断iPhone5系列
#define SDkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !SDisPad : NO)
//判断iPhone6系列
#define SDkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !SDisPad : NO)
//判断iphone6+系列
#define SDkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !SDisPad : NO)
//判断iPhoneX
#define SDIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !SDisPad : NO)
//判断iPHoneXr
#define SDIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !SDisPad : NO)
//判断iPhoneXs
#define SDIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !SDisPad : NO)
//判断iPhoneXs Max
#define SDIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !SDisPad : NO)
//iPhoneX系列
#define SDISIPHONEX ((SDIS_IPHONE_X==YES || SDIS_IPHONE_Xr ==YES || SDIS_IPHONE_Xs== YES || SDIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define SDHeightStatusBar ((SDIS_IPHONE_X==YES || SDIS_IPHONE_Xr ==YES || SDIS_IPHONE_Xs== YES || SDIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define SDHeightNavBar ((SDIS_IPHONE_X==YES || SDIS_IPHONE_Xr ==YES || SDIS_IPHONE_Xs== YES || SDIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define SDHeightTabBar ((SDIS_IPHONE_X==YES || SDIS_IPHONE_Xr ==YES || SDIS_IPHONE_Xs== YES || SDIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define SDHeightNavContentBar ((SDIS_IPHONE_X==YES || SDIS_IPHONE_Xr ==YES || SDIS_IPHONE_Xs== YES || SDIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* SDglobal_h */
