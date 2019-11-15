//
//  GFScorecardTitleTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GFScorecardViewModel;
@class GFScorecardTitleTableViewCell;
typedef void(^GFScorecardTitleEditBlock)(GFScorecardTitleTableViewCell *cell);
@interface GFScorecardTitleTableViewCell : UITableViewCell
@property(nonatomic, strong)GFScorecardViewModel *model;
@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)GFScorecardTitleEditBlock GFScorecardTitleEditB;
@end

NS_ASSUME_NONNULL_END
