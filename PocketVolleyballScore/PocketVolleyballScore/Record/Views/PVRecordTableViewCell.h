//
//  PVRecordTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PVScorecardModel;
@interface PVRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)PVScorecardModel *model;
@end

NS_ASSUME_NONNULL_END
