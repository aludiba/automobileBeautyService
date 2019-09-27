//
//  GHGuideViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GHDailyHabitsViewController;
@interface GHGuideViewController : UIViewController
@property(nonatomic, strong)GHDailyHabitsViewController *superHabitsVC;
@property(nonatomic, strong)UIButton *GHbackButton;
@property(nonatomic, assign)NSUInteger selectIndex;
@end

NS_ASSUME_NONNULL_END
