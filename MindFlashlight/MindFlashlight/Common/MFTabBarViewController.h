//
//  MFTabBarViewController.h
//  MindFlashlight
//
//  Created by bykj on 2019/8/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class MFTabBarViewController;
@class MFFlashlightViewController;
@class MFFunctionViewController;
@class MFSetViewController;
@interface MFTabBarViewController : UITabBarController
+ (MFTabBarViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
