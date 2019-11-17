//
//  AKDrinkingPlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AKDrinkingPlanModel;
@class AKDrinkingPlanDateTableViewCell;
typedef void(^AKDrinkingPlanDateBlock)(AKDrinkingPlanDateTableViewCell *cell);
@interface AKDrinkingPlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)AKDrinkingPlanModel *model;
@property (nonatomic, copy)AKDrinkingPlanDateBlock AKDrinkingPlanDateB;
@end

NS_ASSUME_NONNULL_END
