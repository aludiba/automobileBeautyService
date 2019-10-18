//
//  GAClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAClockTableViewCell;
@class GAgamePlanSaveModel;

typedef void(^GAClockCellBlock)(GAClockTableViewCell *cell);
@interface GAClockTableViewCell : UITableViewCell
@property (nonatomic, strong)GAgamePlanSaveModel *model;
@property (nonatomic, copy)GAClockCellBlock GAClockCellB;
@property (nonatomic, assign)NSUInteger selectIndex;
@end

NS_ASSUME_NONNULL_END
