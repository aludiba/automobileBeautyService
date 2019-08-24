//
//  MFGlobal.h
//  MindFlashlight
//
//  Created by bykj on 2019/8/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#ifndef MFGlobal_h
#define MFGlobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <BmobSDK/Bmob.h>
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import "MFUIUtilities.h"
#import "MBProgressHUD+MFNJ.h"
#import "MFHBTool.h"
#import "MFBaseViewController.h"

//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" tMFle:nil]
/**颜色*/
#define MFH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define MFKeyWindow [UIApplication sharedApplication].keyWindow
#define MFWIDTH [UIScreen mainScreen].bounds.size.width
#define MFHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define MFisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define MFkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !MFisPad : NO)
//判断iPhone5系列
#define MFkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !MFisPad : NO)
//判断iPhone6系列
#define MFkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !MFisPad : NO)
//判断iphone6+系列
#define MFkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !MFisPad : NO)
//判断iPhoneX
#define MFIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !MFisPad : NO)
//判断iPHoneXr
#define MFIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !MFisPad : NO)
//判断iPhoneXs
#define MFIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !MFisPad : NO)
//判断iPhoneXs Max
#define MFIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !MFisPad : NO)
//iPhoneX系列
#define MFISIPHONEX ((MFIS_IPHONE_X==YES || MFIS_IPHONE_Xr ==YES || MFIS_IPHONE_Xs== YES || MFIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define MFHeightStatusBar ((MFIS_IPHONE_X==YES || MFIS_IPHONE_Xr ==YES || MFIS_IPHONE_Xs== YES || MFIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define MFHeightNavBar ((MFIS_IPHONE_X==YES || MFIS_IPHONE_Xr ==YES || MFIS_IPHONE_Xs== YES || MFIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define MFHeightTMFBar ((MFIS_IPHONE_X==YES || MFIS_IPHONE_Xr ==YES || MFIS_IPHONE_Xs== YES || MFIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define MFHeightNavContentBar ((MFIS_IPHONE_X==YES || IS_IPHONE_Xr ==YES || MFIS_IPHONE_Xs== YES || MFIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* MFGlobal_h */
