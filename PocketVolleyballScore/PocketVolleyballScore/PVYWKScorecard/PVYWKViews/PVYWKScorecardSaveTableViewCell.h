//
//  PVYWKScorecardSaveTableViewCell.h
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PVYWKScorecardSaveTableViewCell;
typedef void(^PVYWKScorecardSaveBlock)(PVYWKScorecardSaveTableViewCell *cell);
@interface PVYWKScorecardSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)PVYWKScorecardSaveBlock PVYWKScorecardSaveB;
@end

NS_ASSUME_NONNULL_END
