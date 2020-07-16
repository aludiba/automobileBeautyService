//
//  CDglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef CDglobal_h
#define CDglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+CDNJ.h"
#import "CDHBTool.h"
#import "CalendarTool.h"
#import "CDUIUtilities.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
#define LAST_RUN_VERSION_KEY @"Last_Run_Version_Key"
/**颜色*/
#define FONTSIZE @"fontSize"
#define FONTRGB @"fontRGB"
#define THEMERGB @"themeRGB"
#define REMINDWRITE @"RemindWrite"
#define CDH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define CDKeyWindow [UIApplication sharedApplication].keyWindow
#define CDWIDTH [UIScreen mainScreen].bounds.size.width
#define CDHEICDT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define CDisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define CDkiCDone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !CDisPad : NO)
//判断iCDone5系列
#define CDkiCDone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !CDisPad : NO)
//判断iCDone6系列
#define CDkiCDone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !CDisPad : NO)
//判断iCDone6+系列
#define CDkiCDone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !CDisPad : NO)
//判断iCDoneX
#define CDIS_ICDONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CDisPad : NO)
//判断iCDoneXr
#define CDIS_ICDONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !CDisPad : NO)
//判断iCDoneXs
#define CDIS_ICDONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !CDisPad : NO)
//判断iCDoneXs Max
#define CDIS_ICDONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !CDisPad : NO)
//iCDoneX系列
#define CDISICDONEX ((CDIS_ICDONE_X==YES || CDIS_ICDONE_Xr ==YES || CDIS_ICDONE_Xs== YES || CDIS_ICDONE_Xs_Max== YES) ? YES : NO)
#define CDHeightStatusBar ((CDIS_ICDONE_X==YES || CDIS_ICDONE_Xr ==YES || CDIS_ICDONE_Xs== YES || CDIS_ICDONE_Xs_Max== YES) ? 44.0 : 20.0)
#define CDHeightNavBar ((CDIS_ICDONE_X==YES || CDIS_ICDONE_Xr ==YES || CDIS_ICDONE_Xs== YES || CDIS_ICDONE_Xs_Max== YES) ? 88.0 : 64.0)
#define CDHeightTabBar ((CDIS_ICDONE_X==YES || CDIS_ICDONE_Xr ==YES || CDIS_ICDONE_Xs== YES || CDIS_ICDONE_Xs_Max== YES) ? 83.0 : 49.0)
#define CDHeightNavContentBar ((CDIS_ICDONE_X==YES || CDIS_ICDONE_Xr ==YES || CDIS_ICDONE_Xs== YES || CDIS_ICDONE_Xs_Max== YES)?34.0f: 0)
#endif /* CDglobal_h */
