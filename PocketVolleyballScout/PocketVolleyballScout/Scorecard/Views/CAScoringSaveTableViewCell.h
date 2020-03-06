//
//  CAScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CAScorecardViewModel;
@class CAScoringSaveTableViewCell;
typedef void(^CAScorecardSaveBlock)(CAScoringSaveTableViewCell *cell);
@interface CAScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)CAScorecardViewModel *CAModel;
@property(nonatomic, strong)CAScorecardSaveBlock CAScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
