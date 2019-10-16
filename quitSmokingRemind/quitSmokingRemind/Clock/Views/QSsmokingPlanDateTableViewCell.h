//
//  QSsmokingPlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class QSsmokingPlanModel;
@class QSsmokingPlanDateTableViewCell;
typedef void(^QSsmokingPlanDateBlock)(QSsmokingPlanDateTableViewCell *cell);
@interface QSsmokingPlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)QSsmokingPlanModel *model;
@property (nonatomic, copy)QSsmokingPlanDateBlock QSsmokingPlanDateB;
@end

NS_ASSUME_NONNULL_END
