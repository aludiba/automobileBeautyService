//
//  AKDrinkingPlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AKDrinkingPlanSaveTableViewCell;
typedef void(^AKDrinkingPlanSaveBlock)(AKDrinkingPlanSaveTableViewCell *cell);
@interface AKDrinkingPlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)AKDrinkingPlanSaveBlock AKDrinkingPlanSaveB;
@end

NS_ASSUME_NONNULL_END
