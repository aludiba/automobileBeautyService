//
//  PKBillHistoryTableViewCell.h
//  PocketBooks
//
//  Created by bykj on 2019/9/8.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PKBillHistoryModel;
@interface PKBillHistoryTableViewCell : UITableViewCell
@property(nonatomic, strong)PKBillHistoryModel *model;
@end

NS_ASSUME_NONNULL_END
