//
//  YBScorecardTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YBScorecardViewModel;
@class YBScorecardTableViewCell;
typedef void(^YBScorecardBlock)(YBScorecardTableViewCell *cell);
typedef void(^YBScorecardEditBlock)(YBScorecardTableViewCell *cell);
@interface YBScorecardTableViewCell : UITableViewCell
@property(nonatomic, strong)YBScorecardViewModel *model;
@property(nonatomic, strong)YBScorecardBlock YBScorecardB;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)YBScorecardEditBlock YBScorecardEditB;
@end

NS_ASSUME_NONNULL_END
