//
//  AHClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AHClockTableViewCell;
@class AHsodePlanSaveModel;

typedef void(^AHClockCellBlock)(AHClockTableViewCell *cell);
@interface AHClockTableViewCell : UITableViewCell
@property (nonatomic, strong)AHsodePlanSaveModel *AHmodel;
@property (nonatomic, copy)AHClockCellBlock AHClockCellB;
@property (nonatomic, assign)NSUInteger AHselectIndex;
@end

NS_ASSUME_NONNULL_END
