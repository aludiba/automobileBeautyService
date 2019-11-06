//
//  YBRecordTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YBScorecardModel;
@interface YBRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)YBScorecardModel *model;
@end

NS_ASSUME_NONNULL_END
