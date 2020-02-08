//
//  YBPBSScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YBPBSScorecardViewModel;
@class YBPBSScoringSaveTableViewCell;
typedef void(^YBPBSScorecardSaveBlock)(YBPBSScoringSaveTableViewCell *cell);
@interface YBPBSScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)YBPBSScorecardViewModel *YBPBSModel;
@property(nonatomic, strong)YBPBSScorecardSaveBlock YBPBSScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
