//
//  PHTabBarViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PHTodayViewController;
@class PHDailyHabitsViewController;
@class PHSetViewController;
@interface PHTabBarViewController : UITabBarController
@property(nonatomic, strong)PHTodayViewController *PHtodayVC;
@property(nonatomic, strong)PHDailyHabitsViewController *PHdailyHabitsVC;
@property(nonatomic, strong)PHSetViewController *PHsetVC;
+ (PHTabBarViewController *)PHshareInstance;
@end

NS_ASSUME_NONNULL_END
