//
//  PBScorecardTableViewCell.h
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PBScorecardViewModel;
@class PBScorecardTableViewCell;
typedef void(^PBScorecardBlock)(PBScorecardTableViewCell *cell);
@interface PBScorecardTableViewCell : UITableViewCell
@property(nonatomic, strong)PBScorecardViewModel *model;
@property(nonatomic, strong)PBScorecardBlock PBScorecardB;
@end

NS_ASSUME_NONNULL_END
