//
//  PVScoreSummaryTableViewCell.h
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PVScorecardViewModel;
@interface PVScoreSummaryTableViewCell : UITableViewCell
@property(nonatomic, strong)PVScorecardViewModel *PVModel;
@end

NS_ASSUME_NONNULL_END
