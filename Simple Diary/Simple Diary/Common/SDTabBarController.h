//
//  SDTabBarController.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SDTabBarController;
@class SDDiaryViewController;
@class SDMineViewController;
@interface SDTabBarController : UITabBarController
@property(nonatomic, strong)SDDiaryViewController *SDDiaryVC;
@property(nonatomic, strong)SDMineViewController *SDMineVC;
+ (SDTabBarController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
