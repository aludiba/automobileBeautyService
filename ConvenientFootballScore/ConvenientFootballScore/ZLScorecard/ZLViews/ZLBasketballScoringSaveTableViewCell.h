//
//  ZLBasketballScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ZLBasketballScorecardViewModel;
@class ZLBasketballScoringSaveTableViewCell;
typedef void(^ZLScorecardSaveBlock)(ZLBasketballScoringSaveTableViewCell *cell);
@interface ZLBasketballScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)ZLBasketballScorecardViewModel *ZLModel;
@property(nonatomic, strong)ZLScorecardSaveBlock ZLScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
