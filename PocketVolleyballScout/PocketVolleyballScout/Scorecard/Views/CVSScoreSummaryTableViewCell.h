//
//  CVSScoreSummaryTableViewCell.h
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CVSScorecardViewModel;
@interface CVSScoreSummaryTableViewCell : UITableViewCell
@property(nonatomic, strong)CVSScorecardViewModel *CVSModel;
@end

NS_ASSUME_NONNULL_END
