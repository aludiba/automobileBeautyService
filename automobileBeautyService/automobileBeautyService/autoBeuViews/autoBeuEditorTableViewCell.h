//
//  auto4sEditorTableViewCell.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by 褚红彪 on 2019/6/15.
//  Copyright © 2019 ppb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class autoBeuEditorTableViewCell;
@class autoBeuAddViewModel;
typedef void(^autoBeuEditorBlock)(autoBeuEditorTableViewCell *cell);
@interface autoBeuEditorTableViewCell : UITableViewCell
@property(nonatomic, strong)autoBeuEditorBlock editblock;
@property(nonatomic, copy)NSString *contentString;
@property(nonatomic, assign)CGFloat contentHeight;
@property(nonatomic, strong)autoBeuAddViewModel *model;
@end

NS_ASSUME_NONNULL_END
