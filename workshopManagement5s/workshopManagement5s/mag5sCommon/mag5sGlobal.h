//
//  mag5sGlobal.h
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#ifndef mag5sGlobal_h
#define mag5sGlobal_h
#import <IQKeyboardManager.h>
#import <AFNetworking/AFNetworking.h>
#import <Masonry/Masonry.h>
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>
#import <YYModel/YYModel.h>
#import <fmdb/FMDB.h>
#import "MBProgressHUD+mag5sNJ.h"
#import "mag5sUIUtilities.h"
#import "mag5sHBTool.h"
/**颜色*/
#define mag5sH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define mag5sKeyWindow [UIApplication sharedApplication].keyWindow
#define mag5sWIDTH [UIScreen mainScreen].bounds.size.width
#define mag5sHEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否是ipad
#define mag5sisPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define mag5skiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !mag5sisPad : NO)
//判断iPhone5系列
#define mag5skiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !mag5sisPad : NO)
//判断iPhone6系列
#define mag5skiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !mag5sisPad : NO)
//判断iphone6+系列
#define mag5skiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && !mag5sisPad : NO)
//判断iPhoneX
#define mag5sIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !mag5sisPad : NO)
//判断iPHoneXr
#define mag5sIS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !mag5sisPad : NO)
//判断iPhoneXs
#define mag5sIS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !mag5sisPad : NO)
//判断iPhoneXs Max
#define mag5sIS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !mag5sisPad : NO)
//iPhoneX系列
#define mag5sISIPHONEX ((mag5sIS_IPHONE_X==YES || mag5sIS_IPHONE_Xr ==YES || mag5sIS_IPHONE_Xs== YES || mag5sIS_IPHONE_Xs_Max== YES) ? YES : NO)
#define mag5sHeightStatusBar ((mag5sIS_IPHONE_X==YES || mag5sIS_IPHONE_Xr ==YES || mag5sIS_IPHONE_Xs== YES || mag5sIS_IPHONE_Xs_Max== YES) ? 44.0 : 20.0)
#define mag5sHeightNavBar ((mag5sIS_IPHONE_X==YES || mag5sIS_IPHONE_Xr ==YES || mag5sIS_IPHONE_Xs== YES || mag5sIS_IPHONE_Xs_Max== YES) ? 88.0 : 64.0)
#define mag5sHeightTabBar ((mag5sIS_IPHONE_X==YES || mag5sIS_IPHONE_Xr ==YES || mag5sIS_IPHONE_Xs== YES || mag5sIS_IPHONE_Xs_Max== YES) ? 83.0 : 49.0)
#define mag5sHeightNavContentBar ((mag5sIS_IPHONE_X==YES || IS_IPHONE_Xr ==YES || mag5sIS_IPHONE_Xs== YES || mag5sIS_IPHONE_Xs_Max== YES)?34.0f: 0)
#endif /* mag5sGlobal_h */
