//
//  PBRecordTableViewCell.h
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PBScorecardModel;
@interface PBRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)PBScorecardModel *model;
@end

NS_ASSUME_NONNULL_END
