//
//  PHGuideViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PHDailyHabitsViewController;
@interface PHGuideViewController : UIViewController
@property(nonatomic, strong)PHDailyHabitsViewController *PHsuperHabitsVC;
@property(nonatomic, strong)UIButton *PHbackButton;
@property(nonatomic, assign)NSUInteger PHselectIndex;
@end

NS_ASSUME_NONNULL_END
