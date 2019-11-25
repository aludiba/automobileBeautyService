//
//  PWClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PWClockTableViewCell;
@class PWDrinkingPlanSaveModel;

typedef void(^PWClockCellBlock)(PWClockTableViewCell *cell);
@interface PWClockTableViewCell : UITableViewCell
@property (nonatomic, strong)PWDrinkingPlanSaveModel *model;
@property (nonatomic, copy)PWClockCellBlock PWClockCellB;
@property (nonatomic, assign)NSUInteger selectIndex;
@end

NS_ASSUME_NONNULL_END
