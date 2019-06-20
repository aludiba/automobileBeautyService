//
//  auto4sAddMoreTableViewCell.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class autoBeuAddViewModel;
@class autoBeuAddMoreTableViewCell;
typedef void(^autoBeuAddMoreTableViewCellBlock)(autoBeuAddMoreTableViewCell *cell);
@interface autoBeuAddMoreTableViewCell : UITableViewCell
@property(nonatomic, copy)NSString *contentString;
@property(nonatomic, assign)CGFloat contentHeight;
@property(nonatomic, strong)autoBeuAddMoreTableViewCellBlock autoBeuAddMoreblock;
@property(nonatomic, strong)autoBeuAddViewModel *model;
@end

NS_ASSUME_NONNULL_END
