//
//  PFScorecardTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PFScorecardViewModel;
@class PFScorecardTableViewCell;
typedef void(^PFScorecardBlock)(PFScorecardTableViewCell *cell);
typedef void(^PFScorecardEditBlock)(PFScorecardTableViewCell *cell);
@interface PFScorecardTableViewCell : UITableViewCell
@property(nonatomic, strong)PFScorecardViewModel *model;
@property(nonatomic, strong)PFScorecardBlock PFScorecardB;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)PFScorecardEditBlock PFScorecardEditB;
@end

NS_ASSUME_NONNULL_END
