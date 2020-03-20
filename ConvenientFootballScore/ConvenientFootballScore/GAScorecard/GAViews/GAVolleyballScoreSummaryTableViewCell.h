//
//  GAVolleyballScoreSummaryTableViewCell.h
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAVolleyballScorecardViewModel;
@interface GAVolleyballScoreSummaryTableViewCell : UITableViewCell
@property(nonatomic, strong)GAVolleyballScorecardViewModel *GAModel;
@end

NS_ASSUME_NONNULL_END
