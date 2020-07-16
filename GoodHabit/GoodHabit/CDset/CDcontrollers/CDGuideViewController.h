//
//  CDGuideViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CDDailyHabitsViewController;
@interface CDGuideViewController : UIViewController
@property(nonatomic, strong)CDDailyHabitsViewController *CDsuperHabitsVC;
@property(nonatomic, strong)UIButton *CDbackButton;
@property(nonatomic, assign)NSUInteger CDselectIndex;
@end

NS_ASSUME_NONNULL_END
