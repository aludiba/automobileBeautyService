//
//  magGlobal.h
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef magGlobal_h
#define magGlobal_h
#import <IQKeyboardManager.h>
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <fmdb/FMDB.h>
#import "MBProgressHUD+magNJ.h"
#import "magUIUtilities.h"
#import "magHBTool.h"
#import "CalendarTool.h"
#import "NDHTTPClient.h"
/**颜色*/
#define magH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define magKeyWindow [UIApplication sharedApplication].keyWindow
#define magWIDTH [UIScreen mainScreen].bounds.size.width
#define magHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define magisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define magkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !magisPad : NO)
//判断iPhone5系列
#define magkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !magisPad : NO)
//判断iPhone6系列
#define magkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !magisPad : NO)
//判断iphone6+系列
#define magkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !magisPad : NO)
//判断iPhoneX
#define magIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !magisPad : NO)
//判断iPHoneXr
#define magIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !magisPad : NO)
//判断iPhoneXs
#define magIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !magisPad : NO)
//判断iPhoneXs Max
#define magIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !magisPad : NO)
//iPhoneX系列
#define magISIPHONEX ((magIS_IPHONE_X==YES || magIS_IPHONE_Xr ==YES || magIS_IPHONE_Xs== YES || magIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define magHeightStatusBar ((magIS_IPHONE_X==YES || magIS_IPHONE_Xr ==YES || magIS_IPHONE_Xs== YES || magIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define magHeightNavBar ((magIS_IPHONE_X==YES || magIS_IPHONE_Xr ==YES || magIS_IPHONE_Xs== YES || magIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define magHeightTabBar ((magIS_IPHONE_X==YES || magIS_IPHONE_Xr ==YES || magIS_IPHONE_Xs== YES || magIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define magHeightNavContentBar ((magIS_IPHONE_X==YES || IS_IPHONE_Xr ==YES || magIS_IPHONE_Xs== YES || magIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* magGlobal_h */
