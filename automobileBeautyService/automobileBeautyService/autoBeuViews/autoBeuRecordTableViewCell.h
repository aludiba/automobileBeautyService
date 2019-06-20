//
//  auto4sRecordTableViewCell.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by 褚红彪 on 2019/6/15.
//  Copyright © 2019 ppb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "autoBeuDataModel.h"
NS_ASSUME_NONNULL_BEGIN
@class autoBeuHomeViewController;
@interface autoBeuRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)autoBeuDataModel *model;
@property(nonatomic, strong)autoBeuHomeViewController *superVC;
@end

NS_ASSUME_NONNULL_END
