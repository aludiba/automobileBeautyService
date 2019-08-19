//
//  ABglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef ABglobal_h
#define ABglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <fmdb/FMDB.h>
#import "MBProgressHUD+ABNJ.h"
#import "ABHBTool.h"
#import "ABUIUtilities.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>

//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
/**颜色*/
#define ABH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define ABKeyWindow [UIApplication sharedApplication].keyWindow
#define ABWIDTH [UIScreen mainScreen].bounds.size.width
#define ABHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define ABisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define ABkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !ABisPad : NO)
//判断iPhone5系列
#define ABkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !ABisPad : NO)
//判断iPhone6系列
#define ABkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !ABisPad : NO)
//判断iphone6+系列
#define ABkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !ABisPad : NO)
//判断iPhoneX
#define ABIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !ABisPad : NO)
//判断iPHoneXr
#define ABIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !ABisPad : NO)
//判断iPhoneXs
#define ABIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !ABisPad : NO)
//判断iPhoneXs Max
#define ABIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !ABisPad : NO)
//iPhoneX系列
#define ABISIPHONEX ((ABIS_IPHONE_X==YES || ABIS_IPHONE_Xr ==YES || ABIS_IPHONE_Xs== YES || ABIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define ABHeightStatusBar ((ABIS_IPHONE_X==YES || ABIS_IPHONE_Xr ==YES || ABIS_IPHONE_Xs== YES || ABIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define ABHeightNavBar ((ABIS_IPHONE_X==YES || ABIS_IPHONE_Xr ==YES || ABIS_IPHONE_Xs== YES || ABIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define ABHeightTabBar ((ABIS_IPHONE_X==YES || ABIS_IPHONE_Xr ==YES || ABIS_IPHONE_Xs== YES || ABIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define ABHeightNavContentBar ((ABIS_IPHONE_X==YES || IS_IPHONE_Xr ==YES || ABIS_IPHONE_Xs== YES || ABIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* ABglobal_h */
