//
//  ABMeasurementTitleInputTableViewCell.h
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ABMeasurementModel;
@class ABMeasurementTitleInputTableViewCell;
typedef void(^ABMeasurementTitleInputBlock)(ABMeasurementTitleInputTableViewCell *cell);
@interface ABMeasurementTitleInputTableViewCell : UITableViewCell
@property(nonatomic, strong)ABMeasurementModel *model;
@property(nonatomic, copy)NSString *measurementTitle;
@property(nonatomic, copy)ABMeasurementTitleInputBlock ABMeasurementTitleInputB;
@end

NS_ASSUME_NONNULL_END
