//
//  PKAddBudgetTableViewCell.h
//  PocketBooks
//
//  Created by bykj on 2019/9/4.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PKBudgetModel;
@interface PKAddBudgetTableViewCell : UITableViewCell
@property(nonatomic, strong)PKBudgetModel *model;
@property(nonatomic, strong)UITextField *contentText;
@end

NS_ASSUME_NONNULL_END
