//
//  JBHabitAddEditorTableViewCell.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/12.
//  Copyright © 2020 user. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class JBHabitViewModel;
@class JBHabitAddEditorTableViewCell;
typedef void(^contentEditBlock)(JBHabitAddEditorTableViewCell *cell);
@interface JBHabitAddEditorTableViewCell : UITableViewCell
@property(nonatomic, copy)contentEditBlock JBeditBlock;
@property(nonatomic, assign)CGFloat JBcontentHeight;
@property(nonatomic, strong)JBHabitViewModel *JBViewModel;
@end

NS_ASSUME_NONNULL_END
