//
//  CBSglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef CBSglobal_h
#define CBSglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+CBSNJ.h"
#import "CBSHBTool.h"
#import "CalendarTool.h"
#import "CBSUIUtilities.h"
#import "CBSTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
//颜色
#define CBSH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define CBSKeyWindow [UIApplication sharedApplication].keyWindow
#define CBSWIDTH [UIScreen mainScreen].bounds.size.width
#define CBSHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define CBSisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define CBSkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !CBSisPad : NO)
//判断iPhone5系列
#define CBSkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !CBSisPad : NO)
//判断iPhone6系列
#define CBSkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !CBSisPad : NO)
//判断iphone6+系列
#define CBSkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !CBSisPad : NO)
//判断iPhoneX
#define CBSIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CBSisPad : NO)
//判断iPHoneXr
#define CBSIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !CBSisPad : NO)
//判断iPhoneXs
#define CBSIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CBSisPad : NO)
//判断iPhoneXs Max
#define CBSIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !CBSisPad : NO)
//iPhoneX系列
#define CBSISIPHONEX ((CBSIS_IPHONE_X==YES || CBSIS_IPHONE_Xr ==YES || CBSIS_IPHONE_Xs== YES || CBSIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define CBSHeightStatusBar ((CBSIS_IPHONE_X==YES || CBSIS_IPHONE_Xr ==YES || CBSIS_IPHONE_Xs== YES || CBSIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define CBSHeightNavBar ((CBSIS_IPHONE_X==YES || CBSIS_IPHONE_Xr ==YES || CBSIS_IPHONE_Xs== YES || CBSIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define CBSHeightTabBar ((CBSIS_IPHONE_X==YES || CBSIS_IPHONE_Xr ==YES || CBSIS_IPHONE_Xs == YES || CBSIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define CBSHeightNavContentBar ((CBSIS_IPHONE_X == YES || CBSIS_IPHONE_Xr ==YES || CBSIS_IPHONE_Xs == YES || CBSIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* CBSglobal_h */
