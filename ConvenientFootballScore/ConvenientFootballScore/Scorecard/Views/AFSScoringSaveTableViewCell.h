//
//  AFSScoringSaveTableViewCell.h
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AFSScorecardViewModel;
@class AFSScoringSaveTableViewCell;
typedef void(^AFSScorecardSaveBlock)(AFSScoringSaveTableViewCell *cell);
@interface AFSScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)AFSScorecardViewModel *AFSModel;
@property(nonatomic, strong)AFSScorecardSaveBlock AFSScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
