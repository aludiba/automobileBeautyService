//
//  QSsmokingPlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class QSsmokingPlanSaveTableViewCell;
typedef void(^QSsmokingPlanSaveBlock)(QSsmokingPlanSaveTableViewCell *cell);
@interface QSsmokingPlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)QSsmokingPlanSaveBlock QSsmokingPlanSaveB;
@end

NS_ASSUME_NONNULL_END
