//
//  JBHabitChildTableViewCell.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/13.
//  Copyright © 2020 user. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class JBHabitModel;
@class JBHabitChildTableViewCell;
typedef void(^JBcontentEditBlock)(JBHabitChildTableViewCell *JBcell);
@interface JBHabitChildTableViewCell : UITableViewCell
@property(nonatomic, copy)JBcontentEditBlock JBeditBlock;
@property(nonatomic, assign)JBHabitChildType JBHabitType;
@property(nonatomic, strong)JBHabitModel *JBhabitmodel;
@end

NS_ASSUME_NONNULL_END
