//
//  BGCargoEditableTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BGCargoEditableTableViewCell;
@class BGCargoAddViewModel;
typedef void(^contentEditBlock)(BGCargoEditableTableViewCell *cell);
@interface BGCargoEditableTableViewCell : UITableViewCell
@property(nonatomic, copy)contentEditBlock BGeditBlock;
@property(nonatomic, assign)CGFloat BGcontentHeight;
@property(nonatomic, strong)BGCargoAddViewModel *BGViewModel;
@end

NS_ASSUME_NONNULL_END
