//
//  ABMeasurementTestDBTableViewCell.h
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ABMeasurementTestDBTableViewCell;
@class ABMeasurementModel;
typedef void(^ABMeasurementTestDBBlock)(ABMeasurementTestDBTableViewCell *cell);
@interface ABMeasurementTestDBTableViewCell : UITableViewCell
@property(nonatomic, strong)ABMeasurementModel *model;
@property(nonatomic, copy)ABMeasurementTestDBBlock measurementTestDBBlock;
@property (nonatomic, strong)NSMutableArray *maxArray;
@property(nonatomic, assign)Boolean isStart;
@end

NS_ASSUME_NONNULL_END
