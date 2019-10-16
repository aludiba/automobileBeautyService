//
//  QSClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class QSClockTableViewCell;
@class QSsmokingPlanSaveModel;

typedef void(^QSClockCellBlock)(QSClockTableViewCell *cell);
@interface QSClockTableViewCell : UITableViewCell
@property (nonatomic, strong)QSsmokingPlanSaveModel *model;
@property (nonatomic, copy)QSClockCellBlock QSClockCellB;
@property (nonatomic, assign)NSUInteger selectIndex;
@end

NS_ASSUME_NONNULL_END
