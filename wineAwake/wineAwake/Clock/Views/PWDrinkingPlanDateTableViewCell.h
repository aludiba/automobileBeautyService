//
//  PWDrinkingPlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PWDrinkingPlanModel;
@class PWDrinkingPlanDateTableViewCell;
typedef void(^PWDrinkingPlanDateBlock)(PWDrinkingPlanDateTableViewCell *cell);
@interface PWDrinkingPlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)PWDrinkingPlanModel *model;
@property (nonatomic, copy)PWDrinkingPlanDateBlock PWDrinkingPlanDateB;
@end

NS_ASSUME_NONNULL_END
