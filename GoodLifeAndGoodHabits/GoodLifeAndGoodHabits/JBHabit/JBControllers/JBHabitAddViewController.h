//
//  JBHabitAddViewController.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/12.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class JBHabitViewController;
@interface JBHabitAddViewController : JBBaseViewController
@property(nonatomic, assign)JBHabitChildType JBHabitType;
@property(nonatomic, weak)JBHabitViewController *JBsuperVC;
@end

NS_ASSUME_NONNULL_END
