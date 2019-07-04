//
//  stbaGlobal.h
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef stbaGlobal_h
#define stbaGlobal_h
#import <IQKeyboardManager.h>
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <fmdb/FMDB.h>
#import "MBProgressHUD+stbaNJ.h"
#import "stbaUIUtilities.h"
#import "stbaHBTool.h"
#import "stbaNDHTTPClient.h"
/**颜色*/
#define stbaH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define stbaKeyWindow [UIApplication sharedApplication].keyWindow
#define stbaWIDTH [UIScreen mainScreen].bounds.size.width
#define stbaHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define stbaisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define stbakiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !stbaisPad : NO)
//判断iPhone5系列
#define stbakiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !stbaisPad : NO)
//判断iPhone6系列
#define stbakiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !stbaisPad : NO)
//判断iphone6+系列
#define stbakiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !stbaisPad : NO)
//判断iPhoneX
#define stbaIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !stbaisPad : NO)
//判断iPHoneXr
#define stbaIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !stbaisPad : NO)
//判断iPhoneXs
#define stbaIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !stbaisPad : NO)
//判断iPhoneXs Max
#define stbaIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !stbaisPad : NO)
//iPhoneX系列
#define stbaISIPHONEX ((stbaIS_IPHONE_X==YES || stbaIS_IPHONE_Xr ==YES || stbaIS_IPHONE_Xs== YES || stbaIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define stbaHeightStatusBar ((stbaIS_IPHONE_X==YES || stbaIS_IPHONE_Xr ==YES || stbaIS_IPHONE_Xs== YES || stbaIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define stbaHeightNavBar ((stbaIS_IPHONE_X==YES || stbaIS_IPHONE_Xr ==YES || stbaIS_IPHONE_Xs== YES || stbaIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define stbaHeightTabBar ((stbaIS_IPHONE_X==YES || stbaIS_IPHONE_Xr ==YES || stbaIS_IPHONE_Xs== YES || stbaIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define stbaHeightNavContentBar ((stbaIS_IPHONE_X==YES || IS_IPHONE_Xr ==YES || stbaIS_IPHONE_Xs== YES || stbaIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* stbaGlobal_h */
