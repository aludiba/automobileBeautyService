//
//  CDTabBarViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CDTodayViewController;
@class CDDailyHabitsViewController;
@class CDSetViewController;
@interface CDTabBarViewController : UITabBarController
@property(nonatomic, strong)CDTodayViewController *CDtodayVC;
@property(nonatomic, strong)CDDailyHabitsViewController *CDdailyHabitsVC;
@property(nonatomic, strong)CDSetViewController *CDsetVC;
+ (CDTabBarViewController *)CDshareInstance;
@end

NS_ASSUME_NONNULL_END
