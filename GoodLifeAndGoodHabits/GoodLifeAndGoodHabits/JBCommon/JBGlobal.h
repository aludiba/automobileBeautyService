//
//  JBglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef JBglobal_h
#define JBglobal_h
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import "MBProgressHUD+JBNJ.h"
#import "JBHBTool.h"
#import "JBUIUtilities.h"
#import "JBTabBarController.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <AVOSCloud/AVOSCloud.h>
//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define JBH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define JBKeyWindow [UIApplication sharedApplication].keyWindow
#define JBWIDTH [UIScreen mainScreen].bounds.size.width
#define JBHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define JBisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define JBkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !JBisPad : NO)
//判断iPhone5系列
#define JBkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !JBisPad : NO)
//判断iPhone6系列
#define JBkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !JBisPad : NO)
//判断iphone6+系列
#define JBkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !JBisPad : NO)
//判断iPhoneX
#define JBIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !JBisPad : NO)
//判断iPHoneXr
#define JBIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !JBisPad : NO)
//判断iPhoneXs
#define JBIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !JBisPad : NO)
//判断iPhoneXs Max
#define JBIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !JBisPad : NO)
//iPhoneX系列
#define JBISIPHONEX ((JBIS_IPHONE_X==YES || JBIS_IPHONE_Xr ==YES || JBIS_IPHONE_Xs== YES || JBIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define JBHeightStatusBar ((JBIS_IPHONE_X==YES || JBIS_IPHONE_Xr ==YES || JBIS_IPHONE_Xs== YES || JBIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define JBHeightNavBar ((JBIS_IPHONE_X==YES || JBIS_IPHONE_Xr ==YES || JBIS_IPHONE_Xs== YES || JBIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define JBHeightTabBar ((JBIS_IPHONE_X==YES || JBIS_IPHONE_Xr ==YES || JBIS_IPHONE_Xs == YES || JBIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define JBHeightNavContentBar ((JBIS_IPHONE_X == YES || JBIS_IPHONE_Xr ==YES || JBIS_IPHONE_Xs == YES || JBIS_IPHONE_Xs_Max == YES)?34.0f: 0)
typedef NS_ENUM(NSInteger, JBCargoType) {
    JBCargoTypeWaitReceiving,
    JBCargoTypeWaitLoading,
    JBCargoTypeWaitDelivery,
    JBCargoTypeCompleted,
};
#endif /* JBglobal_h */
