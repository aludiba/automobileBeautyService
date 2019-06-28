//
//  auto4sEditorTableViewCell.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by 褚红彪 on 2019/6/15.
//  Copyright © 2019 ppb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class mag5sEditorTableViewCell;
@class mag5sAddViewModel;
typedef void(^mag5sEditorBlock)(mag5sEditorTableViewCell *cell);
@interface mag5sEditorTableViewCell : UITableViewCell
@property(nonatomic, strong)mag5sEditorBlock editblock;
@property(nonatomic, copy)NSString *contentString;
@property(nonatomic, assign)CGFloat contentHeight;
@property(nonatomic, strong)mag5sAddViewModel *model;
@end

NS_ASSUME_NONNULL_END
