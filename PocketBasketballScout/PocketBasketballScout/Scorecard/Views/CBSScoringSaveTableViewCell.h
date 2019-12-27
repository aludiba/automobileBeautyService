//
//  CBSScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CBSScorecardViewModel;
@class CBSScoringSaveTableViewCell;
typedef void(^CBSScorecardSaveBlock)(CBSScoringSaveTableViewCell *cell);
@interface CBSScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)CBSScorecardViewModel *CBSModel;
@property(nonatomic, strong)CBSScorecardSaveBlock CBSScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
