//
//  auto4sAddSingleTableViewCell.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class mag5sAddViewModel;
@class mag5sAddSingleTableViewCell;
typedef void(^mag5sAddSingleTableViewCellBlock)(mag5sAddSingleTableViewCell *cell);
@interface mag5sAddSingleTableViewCell : UITableViewCell
@property(nonatomic, copy)NSString *contentString;
@property(nonatomic, assign)CGFloat contentHeight;
@property(nonatomic, strong)mag5sAddSingleTableViewCellBlock mag5sAddSingleblock;
@property(nonatomic, strong)mag5sAddViewModel *model;
@end

NS_ASSUME_NONNULL_END
