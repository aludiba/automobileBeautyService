//
//  ABBothTeamsTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ABScorecardModel;
@class ABScorecardViewModel;
@interface ABBothTeamsTableViewCell : UITableViewCell
@property(nonatomic, strong)ABScorecardModel *ABScoreModel;//记录模型
@property(nonatomic, strong)ABScorecardViewModel *ABModel;
@end

NS_ASSUME_NONNULL_END
