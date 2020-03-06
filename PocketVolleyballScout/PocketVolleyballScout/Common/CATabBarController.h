//
//  CATabBarController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CATabBarController;

@interface CATabBarController : UITabBarController
+ (CATabBarController *)shareInstance;

@end

NS_ASSUME_NONNULL_END
