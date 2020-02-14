//
//  PVYWKScorecardTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PVYWKScorecardViewModel;
@class PVYWKScorecardTableViewCell;
typedef void(^PVYWKScorecardBlock)(PVYWKScorecardTableViewCell *cell);
typedef void(^PVYWKScorecardEditBlock)(PVYWKScorecardTableViewCell *cell);
@interface PVYWKScorecardTableViewCell : UITableViewCell
@property(nonatomic, strong)PVYWKScorecardViewModel *model;
@property(nonatomic, strong)PVYWKScorecardBlock PVYWKScorecardB;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)PVYWKScorecardEditBlock PVYWKScorecardEditB;
@end

NS_ASSUME_NONNULL_END
