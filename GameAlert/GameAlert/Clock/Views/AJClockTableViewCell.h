//
//  AJClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AJClockTableViewCell;
@class AJgamePlanSaveModel;

typedef void(^AJClockCellBlock)(AJClockTableViewCell *cell);
@interface AJClockTableViewCell : UITableViewCell
@property (nonatomic, strong)AJgamePlanSaveModel *AJmodel;
@property (nonatomic, copy)AJClockCellBlock AJClockCellB;
@property (nonatomic, assign)NSUInteger AJselectIndex;
@end

NS_ASSUME_NONNULL_END
