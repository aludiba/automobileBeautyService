//
//  autoBeuGlobal.h
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef autoBeuGlobal_h
#define autoBeuGlobal_h
#import <IQKeyboardManager.h>
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <fmdb/FMDB.h>
#import "MBProgressHUD+autoBeuNJ.h"
#import "autoBeuUIUtilities.h"
#import "autoBeuHBTool.h"
#import "autoBeuNDHTTPClient.h"
/**颜色*/
#define auto4sH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define auto4sKeyWindow [UIApplication sharedApplication].keyWindow
#define auto4sWIDTH [UIScreen mainScreen].bounds.size.width
#define auto4sHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define auto4sisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define auto4skiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !auto4sisPad : NO)
//判断iPhone5系列
#define auto4skiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !auto4sisPad : NO)
//判断iPhone6系列
#define auto4skiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !auto4sisPad : NO)
//判断iphone6+系列
#define auto4skiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !auto4sisPad : NO)
//判断iPhoneX
#define auto4sIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !auto4sisPad : NO)
//判断iPHoneXr
#define auto4sIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !auto4sisPad : NO)
//判断iPhoneXs
#define auto4sIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !auto4sisPad : NO)
//判断iPhoneXs Max
#define auto4sIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !auto4sisPad : NO)
//iPhoneX系列
#define auto4sISIPHONEX ((auto4sIS_IPHONE_X==YES || auto4sIS_IPHONE_Xr ==YES || auto4sIS_IPHONE_Xs== YES || auto4sIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define auto4sHeightStatusBar ((auto4sIS_IPHONE_X==YES || auto4sIS_IPHONE_Xr ==YES || auto4sIS_IPHONE_Xs== YES || auto4sIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define auto4sHeightNavBar ((auto4sIS_IPHONE_X==YES || auto4sIS_IPHONE_Xr ==YES || auto4sIS_IPHONE_Xs== YES || auto4sIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define auto4sHeightTabBar ((auto4sIS_IPHONE_X==YES || auto4sIS_IPHONE_Xr ==YES || auto4sIS_IPHONE_Xs== YES || auto4sIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define auto4sHeightNavContentBar ((auto4sIS_IPHONE_X==YES || IS_IPHONE_Xr ==YES || auto4sIS_IPHONE_Xs== YES || auto4sIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* autoBeuGlobal_h */
