//
//  GFRecordTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GFScorecardModel;
@interface GFRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)GFScorecardModel *model;
@end

NS_ASSUME_NONNULL_END
