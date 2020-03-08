//
//  ADScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ADScorecardViewModel;
@class ADScoringSaveTableViewCell;
typedef void(^ADScorecardSaveBlock)(ADScoringSaveTableViewCell *cell);
@interface ADScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)ADScorecardViewModel *ADModel;
@property(nonatomic, strong)ADScorecardSaveBlock ADScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
