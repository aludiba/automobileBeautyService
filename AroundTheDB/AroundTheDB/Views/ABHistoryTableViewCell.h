//
//  ABHistoryTableViewCell.h
//  AroundTheDB
//
//  Created by bykj on 2019/8/22.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ABMeasurementModel;
@interface ABHistoryTableViewCell : UITableViewCell
@property(nonatomic, strong)ABMeasurementModel *model;
@end

NS_ASSUME_NONNULL_END
