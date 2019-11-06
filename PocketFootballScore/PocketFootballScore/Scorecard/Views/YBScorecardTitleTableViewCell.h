//
//  YBScorecardTitleTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YBScorecardViewModel;
@class YBScorecardTitleTableViewCell;
typedef void(^YBScorecardTitleEditBlock)(YBScorecardTitleTableViewCell *cell);
@interface YBScorecardTitleTableViewCell : UITableViewCell
@property(nonatomic, strong)YBScorecardViewModel *model;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)YBScorecardTitleEditBlock YBScorecardTitleEditB;
@end

NS_ASSUME_NONNULL_END
