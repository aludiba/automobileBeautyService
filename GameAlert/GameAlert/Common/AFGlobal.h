//
//  AFglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef AFglobal_h
#define AFglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+AFNJ.h"
#import "AFHBTool.h"
#import "CalendarTool.h"
#import "AFUIUtilities.h"
#import "AFTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
//#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define AFH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define AFKeyWindow [UIApplication sharedApplication].keyWindow
#define AFWIDTH [UIScreen mainScreen].bounds.size.width
#define AFHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define AFisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define AFkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !AFisPad : NO)
//判断iPhone5系列
#define AFkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !AFisPad : NO)
//判断iPhone6系列
#define AFkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !AFisPad : NO)
//判断iphone6+系列
#define AFkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !AFisPad : NO)
//判断iPhoneX
#define AFIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AFisPad : NO)
//判断iPHoneXr
#define AFIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !AFisPad : NO)
//判断iPhoneXs
#define AFIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !AFisPad : NO)
//判断iPhoneXs Max
#define AFIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !AFisPad : NO)
//iPhoneX系列
#define AFISIPHONEX ((AFIS_IPHONE_X==YES || AFIS_IPHONE_Xr ==YES || AFIS_IPHONE_Xs== YES || AFIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define AFHeightStatusBar ((AFIS_IPHONE_X==YES || AFIS_IPHONE_Xr ==YES || AFIS_IPHONE_Xs== YES || AFIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define AFHeightNavBar ((AFIS_IPHONE_X==YES || AFIS_IPHONE_Xr ==YES || AFIS_IPHONE_Xs== YES || AFIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define AFHeightTabBar ((AFIS_IPHONE_X==YES || AFIS_IPHONE_Xr ==YES || AFIS_IPHONE_Xs == YES || AFIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define AFHeightNavContentBar ((AFIS_IPHONE_X == YES || AFIS_IPHONE_Xr ==YES || AFIS_IPHONE_Xs == YES || AFIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* AFglobal_h */
