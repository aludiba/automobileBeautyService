//
//  EAsodePlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class EAsodePlanSaveTableViewCell;
typedef void(^EAsodePlanSaveBlock)(EAsodePlanSaveTableViewCell *cell);
@interface EAsodePlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)EAsodePlanSaveBlock EAsodePlanSaveB;
@end

NS_ASSUME_NONNULL_END
