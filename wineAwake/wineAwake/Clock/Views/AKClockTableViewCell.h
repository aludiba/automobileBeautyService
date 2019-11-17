//
//  AKClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AKClockTableViewCell;
@class AKDrinkingPlanSaveModel;

typedef void(^AKClockCellBlock)(AKClockTableViewCell *cell);
@interface AKClockTableViewCell : UITableViewCell
@property (nonatomic, strong)AKDrinkingPlanSaveModel *model;
@property (nonatomic, copy)AKClockCellBlock AKClockCellB;
@property (nonatomic, assign)NSUInteger selectIndex;
@end

NS_ASSUME_NONNULL_END
