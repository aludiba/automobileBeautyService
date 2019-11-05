//
//  PVScorecardSaveTableViewCell.h
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PVScorecardSaveTableViewCell;
typedef void(^PVScorecardSaveBlock)(PVScorecardSaveTableViewCell *cell);
@interface PVScorecardSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)PVScorecardSaveBlock PVScorecardSaveB;
@end

NS_ASSUME_NONNULL_END
