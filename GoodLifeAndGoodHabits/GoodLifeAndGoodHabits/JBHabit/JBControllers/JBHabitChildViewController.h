//
//  JBHabitChildViewController.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/12.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, JBHabitChildType) {
    JBHabitChildTypeAll,
    JBHabitChildTypeMotion,
    JBHabitChildTypeReadBook,
    JBHabitChildTypeMusicalInstruments,
    JBHabitChildTypeOthers,
};
@interface JBHabitChildViewController : JBBaseViewController
@property(nonatomic, assign)JBHabitChildType JBType;
@property(nonatomic, strong)UITableView *JBMainTable;
@end

NS_ASSUME_NONNULL_END
