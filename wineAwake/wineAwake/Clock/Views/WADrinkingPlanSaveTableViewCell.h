//
//  WADrinkingPlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WADrinkingPlanSaveTableViewCell;
typedef void(^WADrinkingPlanSaveBlock)(WADrinkingPlanSaveTableViewCell *cell);
@interface WADrinkingPlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)WADrinkingPlanSaveBlock WADrinkingPlanSaveB;
@end

NS_ASSUME_NONNULL_END
