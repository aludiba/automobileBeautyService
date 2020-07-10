//
//  ALglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef BMglobal_h
#define BMglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+BMNJ.h"
#import "BMHBTool.h"
#import "BMUIUtilities.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define TingYunAPPKey @"9eBM6a11cd3f4ba4b0182718541643a9"
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
#define BMWeakSelf(type)  __weak typeof(type) weak##type = type;
#define BMStrongSelf(type)  __strong typeof(type) type = weak##type;
/**颜色*/
#define BMH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define BMKeyWindow [UIApplication sharedApplication].keyWindow
#define BMWIDTH [UIScreen mainScreen].bounds.size.width
#define BMHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define BMisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define BMkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !BMisPad : NO)
//判断iPhone5系列
#define BMkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !BMisPad : NO)
//判断iPhone6系列
#define BMkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !BMisPad : NO)
//判断iphone6+系列
#define BMkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !BMisPad : NO)
//判断iPhoneX
#define BMIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !BMisPad : NO)
//判断iPHoneXr
#define BMIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !BMisPad : NO)
//判断iPhoneXs
#define BMIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !BMisPad : NO)
//判断iPhoneXs Max
#define BMIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !BMisPad : NO)
//iPhoneX系列
#define BMISIPHONEX ((BMIS_IPHONE_X==YES || BMIS_IPHONE_Xr ==YES || BMIS_IPHONE_Xs== YES || BMIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define BMHeightStatusBar ((BMIS_IPHONE_X==YES || BMIS_IPHONE_Xr ==YES || BMIS_IPHONE_Xs== YES || BMIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define BMHeightNavBar ((BMIS_IPHONE_X==YES || BMIS_IPHONE_Xr ==YES || BMIS_IPHONE_Xs== YES || BMIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define BMHeightTabBar ((BMIS_IPHONE_X==YES || BMIS_IPHONE_Xr ==YES || BMIS_IPHONE_Xs == YES || BMIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define BMHeightNavContentBar ((BMIS_IPHONE_X == YES || BMIS_IPHONE_Xr ==YES || BMIS_IPHONE_Xs == YES || BMIS_IPHONE_Xs_Max == YES)?34.0f: 0)
#endif /* ALglobal_h */
