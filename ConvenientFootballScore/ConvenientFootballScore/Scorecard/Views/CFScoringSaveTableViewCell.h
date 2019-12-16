//
//  CFScoringSaveTableViewCell.h
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CFScorecardViewModel;
@class CFScoringSaveTableViewCell;
typedef void(^CFScorecardSaveBlock)(CFScoringSaveTableViewCell *cell);
@interface CFScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)CFScorecardViewModel *CFModel;
@property(nonatomic, strong)CFScorecardSaveBlock CFScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
