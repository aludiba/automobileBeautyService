//
//  CABothTeamsTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CAScorecardModel;
@class CAScorecardViewModel;
@interface CABothTeamsTableViewCell : UITableViewCell
@property(nonatomic, strong)CAScorecardModel *CAScoreModel;//记录模型
@property(nonatomic, strong)CAScorecardViewModel *CAModel;
@end

NS_ASSUME_NONNULL_END
