//
//  PFScorecardTitleTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PFScorecardViewModel;
@class PFScorecardTitleTableViewCell;
typedef void(^PFScorecardTitleEditBlock)(PFScorecardTitleTableViewCell *cell);
@interface PFScorecardTitleTableViewCell : UITableViewCell
@property(nonatomic, strong)PFScorecardViewModel *model;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)PFScorecardTitleEditBlock PFScorecardTitleEditB;
@end

NS_ASSUME_NONNULL_END
