//
//  JBHomeAddNoteTableViewCell.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/11.
//  Copyright © 2020 user. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class JBLifeViewModel;
@class JBHomeAddNoteTableViewCell;
typedef void(^JBcontentEditBlock)(JBHomeAddNoteTableViewCell *cell);
@interface JBHomeAddNoteTableViewCell : UITableViewCell
@property(nonatomic, copy)JBcontentEditBlock JBeditBlock;
@property(nonatomic, assign)CGFloat JBcontentHeight;
@property(nonatomic, strong)JBLifeViewModel *JBlifeviewmodel;
@end

NS_ASSUME_NONNULL_END
