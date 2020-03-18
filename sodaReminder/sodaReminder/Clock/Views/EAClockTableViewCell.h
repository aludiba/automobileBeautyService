//
//  EAClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class EAClockTableViewCell;
@class EAsodePlanSaveModel;

typedef void(^EAClockCellBlock)(EAClockTableViewCell *cell);
@interface EAClockTableViewCell : UITableViewCell
@property (nonatomic, strong)EAsodePlanSaveModel *EAmodel;
@property (nonatomic, copy)EAClockCellBlock EAClockCellB;
@property (nonatomic, assign)NSUInteger EAselectIndex;
@end

NS_ASSUME_NONNULL_END
