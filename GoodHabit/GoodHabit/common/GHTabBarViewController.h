//
//  GHTabBarViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GHTodayViewController;
@class GHDailyHabitsViewController;
@class GHSetViewController;
@interface GHTabBarViewController : UITabBarController
@property(nonatomic, strong)GHTodayViewController *todayVC;
@property(nonatomic, strong)GHDailyHabitsViewController *dailyHabitsVC;
@property(nonatomic, strong)GHSetViewController *setVC;
+ (GHTabBarViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
