//
//  VTScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class VTScorecardViewModel;
@class VTScoringSaveTableViewCell;
typedef void(^VTScorecardSaveBlock)(VTScoringSaveTableViewCell *cell);
@interface VTScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)VTScorecardViewModel *VTModel;
@property(nonatomic, strong)VTScorecardSaveBlock VTScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
