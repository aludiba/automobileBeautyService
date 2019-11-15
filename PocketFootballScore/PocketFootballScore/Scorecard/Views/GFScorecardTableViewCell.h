//
//  GFScorecardTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GFScorecardViewModel;
@class GFScorecardTableViewCell;
typedef void(^GFScorecardBlock)(GFScorecardTableViewCell *cell);
typedef void(^GFScorecardEditBlock)(GFScorecardTableViewCell *cell);
@interface GFScorecardTableViewCell : UITableViewCell
@property(nonatomic, strong)GFScorecardViewModel *model;
@property(nonatomic, strong)GFScorecardBlock GFScorecardB;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)GFScorecardEditBlock GFScorecardEditB;
@end

NS_ASSUME_NONNULL_END
