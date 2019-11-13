//
//  KTScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class KTScorecardViewModel;
@class KTScoringSaveTableViewCell;
typedef void(^KTScorecardSaveBlock)(KTScoringSaveTableViewCell *cell);
@interface KTScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)KTScorecardViewModel *KTModel;
@property(nonatomic, strong)KTScorecardSaveBlock KTScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
