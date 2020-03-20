//
//  GAVolleyballBothTeamsTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAVolleyballScorecardModel;
@class GAVolleyballScorecardViewModel;
@interface GAVolleyballBothTeamsTableViewCell : UITableViewCell
@property(nonatomic, strong)GAVolleyballScorecardModel *GAScoreModel;//记录模型
@property(nonatomic, strong)GAVolleyballScorecardViewModel *GAModel;
@end

NS_ASSUME_NONNULL_END
