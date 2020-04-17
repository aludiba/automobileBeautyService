//
//  ALCargoEditableTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ALCargoEditableTableViewCell;
@class ALCargoAddViewModel;
typedef void(^contentEditBlock)(ALCargoEditableTableViewCell *cell);
@interface ALCargoEditableTableViewCell : UITableViewCell
@property(nonatomic, copy)contentEditBlock ALeditBlock;
@property(nonatomic, assign)CGFloat ALcontentHeight;
@property(nonatomic, strong)ALCargoAddViewModel *ALViewModel;
@end

NS_ASSUME_NONNULL_END
