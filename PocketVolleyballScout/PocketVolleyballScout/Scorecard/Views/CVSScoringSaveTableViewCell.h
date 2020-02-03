//
//  CVSScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CVSScorecardViewModel;
@class CVSScoringSaveTableViewCell;
typedef void(^CVSScorecardSaveBlock)(CVSScoringSaveTableViewCell *cell);
@interface CVSScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)CVSScorecardViewModel *CVSModel;
@property(nonatomic, strong)CVSScorecardSaveBlock CVSScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
