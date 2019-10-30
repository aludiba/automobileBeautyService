//
//  PVScorecardTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PVScorecardViewModel;
@class PVScorecardTableViewCell;
typedef void(^PVScorecardBlock)(PVScorecardTableViewCell *cell);
typedef void(^PVScorecardEditBlock)(PVScorecardTableViewCell *cell);
@interface PVScorecardTableViewCell : UITableViewCell
@property(nonatomic, strong)PVScorecardViewModel *model;
@property(nonatomic, strong)PVScorecardBlock PVScorecardB;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)PVScorecardEditBlock PVScorecardEditB;
@end

NS_ASSUME_NONNULL_END
