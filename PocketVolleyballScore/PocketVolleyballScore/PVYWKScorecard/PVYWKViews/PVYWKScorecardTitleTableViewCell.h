//
//  PVYWKScorecardTitleTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PVYWKScorecardViewModel;
@class PVYWKScorecardTitleTableViewCell;
typedef void(^PVYWKScorecardTitleEditBlock)(PVYWKScorecardTitleTableViewCell *cell);
@interface PVYWKScorecardTitleTableViewCell : UITableViewCell
@property(nonatomic, strong)PVYWKScorecardViewModel *model;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)PVYWKScorecardTitleEditBlock PVYWKScorecardTitleEditB;
@end

NS_ASSUME_NONNULL_END
