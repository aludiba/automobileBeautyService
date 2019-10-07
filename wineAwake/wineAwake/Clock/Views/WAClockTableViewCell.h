//
//  WAClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WAClockTableViewCell;
@class WADrinkingPlanSaveModel;

typedef void(^WAClockCellBlock)(WAClockTableViewCell *cell);
@interface WAClockTableViewCell : UITableViewCell
@property (nonatomic, strong)WADrinkingPlanSaveModel *model;
@property (nonatomic, copy)WAClockCellBlock WAClockCellB;
@property (nonatomic, assign)NSUInteger selectIndex;
@end

NS_ASSUME_NONNULL_END
