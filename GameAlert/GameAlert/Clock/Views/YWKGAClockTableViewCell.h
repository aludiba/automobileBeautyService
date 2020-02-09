//
//  YWKGAClockTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YWKGAClockTableViewCell;
@class YWKGAgamePlanSaveModel;

typedef void(^YWKGAClockCellBlock)(YWKGAClockTableViewCell *cell);
@interface YWKGAClockTableViewCell : UITableViewCell
@property (nonatomic, strong)YWKGAgamePlanSaveModel *model;
@property (nonatomic, copy)YWKGAClockCellBlock YWKGAClockCellB;
@property (nonatomic, assign)NSUInteger selectIndex;
@end

NS_ASSUME_NONNULL_END
