//
//  JBHabitChildViewController.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/12.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class JBHabitViewController;
@interface JBHabitChildViewController : JBBaseViewController
@property(nonatomic, weak)JBHabitViewController *JBsuperVC;
@property(nonatomic, assign)JBHabitChildType JBHabitType;
@property(nonatomic, strong)UITableView *JBMainTable;
- (void)JBLoadData;
@end

NS_ASSUME_NONNULL_END
