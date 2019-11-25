//
//  PWDrinkingPlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PWDrinkingPlanSaveTableViewCell;
typedef void(^PWDrinkingPlanSaveBlock)(PWDrinkingPlanSaveTableViewCell *cell);
@interface PWDrinkingPlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)PWDrinkingPlanSaveBlock PWDrinkingPlanSaveB;
@end

NS_ASSUME_NONNULL_END
