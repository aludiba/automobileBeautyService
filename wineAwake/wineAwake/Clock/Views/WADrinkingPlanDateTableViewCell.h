//
//  WADrinkingPlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WADrinkingPlanModel;
@class WADrinkingPlanDateTableViewCell;
typedef void(^WADrinkingPlanDateBlock)(WADrinkingPlanDateTableViewCell *cell);
@interface WADrinkingPlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)WADrinkingPlanModel *model;
@property (nonatomic, copy)WADrinkingPlanDateBlock WADrinkingPlanDateB;
@end

NS_ASSUME_NONNULL_END
