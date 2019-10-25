//
//  PBScorecardTitleTableViewCell.h
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PBScorecardViewModel;
@class PBScorecardTitleTableViewCell;
typedef void(^PBScorecardTitleEditBlock)(PBScorecardTitleTableViewCell *cell);
@interface PBScorecardTitleTableViewCell : UITableViewCell
@property(nonatomic, strong)PBScorecardViewModel *model;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)PBScorecardTitleEditBlock PBScorecardTitleEditB;
@end

NS_ASSUME_NONNULL_END
