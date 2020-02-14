//
//  PVYWKScorecardOperationTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PVYWKScorecardOperationTableViewCell;
typedef void(^PVYWKScorecardOperationBlock)(PVYWKScorecardOperationTableViewCell *cell);
@interface PVYWKScorecardOperationTableViewCell : UITableViewCell
@property(nonatomic, strong)PVYWKScorecardOperationBlock PVYWKScorecardOperationB;
@property(nonatomic, assign)int index;//第几个按钮
@property(nonatomic, assign)int hours;//时
@property(nonatomic, assign)int minutes;//分秒
@property(nonatomic, assign)int seconds;//秒
@property (nonatomic,strong )NSTimer *PVYWKtimer;//定时器
@property(nonatomic, strong)UIButton *PVYWKStartButton;//开始按钮
@property(nonatomic, assign)scorecardOperationStartOrStopType startOrStopType;//开始或者暂停状态标注
@end

NS_ASSUME_NONNULL_END
