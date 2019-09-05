//
//  PKBudgetTableViewCell.h
//  PocketBooks
//
//  Created by bykj on 2019/9/5.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PKBudgetModel;
@interface PKBudgetTableViewCell : UITableViewCell
@property(nonatomic, strong)PKBudgetModel *model;
@end

NS_ASSUME_NONNULL_END
