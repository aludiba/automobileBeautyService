//
//  AFClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AFClockTableViewCell;
@class AFgamePlanSaveModel;

typedef void(^AFClockCellBlock)(AFClockTableViewCell *cell);
@interface AFClockTableViewCell : UITableViewCell
@property (nonatomic, strong)AFgamePlanSaveModel *AFmodel;
@property (nonatomic, copy)AFClockCellBlock AFClockCellB;
@property (nonatomic, assign)NSUInteger AFselectIndex;
@end

NS_ASSUME_NONNULL_END
