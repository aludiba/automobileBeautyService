//
//  ABScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ABScorecardViewModel;
@class ABScoringSaveTableViewCell;
typedef void(^ABScorecardSaveBlock)(ABScoringSaveTableViewCell *cell);
@interface ABScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)ABScorecardViewModel *ABModel;
@property(nonatomic, strong)ABScorecardSaveBlock ABScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
