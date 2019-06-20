//
//  auto4sAddSingleTableViewCell.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class autoBeuAddViewModel;
@class autoBeuAddSingleTableViewCell;
typedef void(^autoBeuAddSingleTableViewCellBlock)(autoBeuAddSingleTableViewCell *cell);
@interface autoBeuAddSingleTableViewCell : UITableViewCell
@property(nonatomic, copy)NSString *contentString;
@property(nonatomic, assign)CGFloat contentHeight;
@property(nonatomic, strong)autoBeuAddSingleTableViewCellBlock autoBeuAddSingleblock;
@property(nonatomic, strong)autoBeuAddViewModel *model;
@end

NS_ASSUME_NONNULL_END
