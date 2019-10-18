//
//  SOClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SOClockTableViewCell;
@class SOsodePlanSaveModel;

typedef void(^SOClockCellBlock)(SOClockTableViewCell *cell);
@interface SOClockTableViewCell : UITableViewCell
@property (nonatomic, strong)SOsodePlanSaveModel *model;
@property (nonatomic, copy)SOClockCellBlock SOClockCellB;
@property (nonatomic, assign)NSUInteger selectIndex;
@end

NS_ASSUME_NONNULL_END
