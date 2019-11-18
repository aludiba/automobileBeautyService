//
//  BTScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BTScorecardViewModel;
@class BTScoringSaveTableViewCell;
typedef void(^BTScorecardSaveBlock)(BTScoringSaveTableViewCell *cell);
@interface BTScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)BTScorecardViewModel *BTModel;
@property(nonatomic, strong)BTScorecardSaveBlock BTScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
