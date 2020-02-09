//
//  WBYBKOKScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WBYBKOKScorecardViewModel;
@class WBYBKOKScoringSaveTableViewCell;
typedef void(^WBYBKOKScorecardSaveBlock)(WBYBKOKScoringSaveTableViewCell *cell);
@interface WBYBKOKScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)WBYBKOKScorecardViewModel *WBYBKOKModel;
@property(nonatomic, strong)WBYBKOKScorecardSaveBlock WBYBKOKScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
