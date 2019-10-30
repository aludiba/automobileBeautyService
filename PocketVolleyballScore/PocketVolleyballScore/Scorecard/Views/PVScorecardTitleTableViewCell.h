//
//  PVScorecardTitleTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PVScorecardViewModel;
@class PVScorecardTitleTableViewCell;
typedef void(^PVScorecardTitleEditBlock)(PVScorecardTitleTableViewCell *cell);
@interface PVScorecardTitleTableViewCell : UITableViewCell
@property(nonatomic, strong)PVScorecardViewModel *model;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)PVScorecardTitleEditBlock PVScorecardTitleEditB;
@end

NS_ASSUME_NONNULL_END
