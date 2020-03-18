//
//  EAglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef EAglobal_h
#define EAglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+EANJ.h"
#import "EAHBTool.h"
#import "CalendarTool.h"
#import "EAUIUtilities.h"
#import "EATabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define EAH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define EAKeyWindow [UIApplication sharedApplication].keyWindow
#define EAWIDTH [UIScreen mainScreen].bounds.size.width
#define EAHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define EAisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define EAkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !EAisPad : NO)
//判断iPhone5系列
#define EAkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !EAisPad : NO)
//判断iPhone6系列
#define EAkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !EAisPad : NO)
//判断iphone6+系列
#define EAkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !EAisPad : NO)
//判断iPhoneX
#define EAIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !EAisPad : NO)
//判断iPHoneXr
#define EAIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !EAisPad : NO)
//判断iPhoneXs
#define EAIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !EAisPad : NO)
//判断iPhoneXs Max
#define EAIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !EAisPad : NO)
//iPhoneX系列
#define EAISIPHONEX ((EAIS_IPHONE_X==YES || EAIS_IPHONE_Xr ==YES || EAIS_IPHONE_Xs== YES || EAIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define EAHeightStatusBar ((EAIS_IPHONE_X==YES || EAIS_IPHONE_Xr ==YES || EAIS_IPHONE_Xs== YES || EAIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define EAHeightNavBar ((EAIS_IPHONE_X==YES || EAIS_IPHONE_Xr ==YES || EAIS_IPHONE_Xs== YES || EAIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define EAHeightTabBar ((EAIS_IPHONE_X==YES || EAIS_IPHONE_Xr ==YES || EAIS_IPHONE_Xs == YES || EAIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define EAHeightNavContentBar ((EAIS_IPHONE_X == YES || EAIS_IPHONE_Xr ==YES || EAIS_IPHONE_Xs == YES || EAIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* EAglobal_h */
