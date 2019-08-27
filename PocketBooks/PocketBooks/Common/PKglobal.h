//
//  PKglobal.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef PKglobal_h
#define PKglobal_h
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <fmdb/FMDB.h>
#import "MBProgressHUD+PKNJ.h"
#import "PKHBTool.h"
#import "PKUIUtilities.h"
#import "NSArray+log.h"
#import "NSDictionary+log.h"
#import <BmobSDK/Bmob.h>
#import <AVOSCloud/AVOSCloud.h>

//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" tPKle:nil]
/**颜色*/
#define PKH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define PKKeyWindow [UIApplication sharedApplication].keyWindow
#define PKWIDTH [UIScreen mainScreen].bounds.size.width
#define PKHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define PKisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define PKkiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !PKisPad : NO)
//判断iPhone5系列
#define PKkiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !PKisPad : NO)
//判断iPhone6系列
#define PKkiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !PKisPad : NO)
//判断iphone6+系列
#define PKkiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !PKisPad : NO)
//判断iPhoneX
#define PKIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PKisPad : NO)
//判断iPHoneXr
#define PKIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !PKisPad : NO)
//判断iPhoneXs
#define PKIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !PKisPad : NO)
//判断iPhoneXs Max
#define PKIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !PKisPad : NO)
//iPhoneX系列
#define PKISIPHONEX ((PKIS_IPHONE_X==YES || PKIS_IPHONE_Xr ==YES || PKIS_IPHONE_Xs== YES || PKIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define PKHeightStatusBar ((PKIS_IPHONE_X==YES || PKIS_IPHONE_Xr ==YES || PKIS_IPHONE_Xs== YES || PKIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define PKHeightNavBar ((PKIS_IPHONE_X==YES || PKIS_IPHONE_Xr ==YES || PKIS_IPHONE_Xs== YES || PKIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define PKHeightTPKBar ((PKIS_IPHONE_X==YES || PKIS_IPHONE_Xr ==YES || PKIS_IPHONE_Xs== YES || PKIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define PKHeightNavContentBar ((PKIS_IPHONE_X==YES || IS_IPHONE_Xr ==YES || PKIS_IPHONE_Xs== YES || PKIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* PKglobal_h */
