//
//  PBScorecardOperationTableViewCell.h
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PBScorecardOperationTableViewCell;
typedef void(^PBScorecardOperationBlock)(PBScorecardOperationTableViewCell *cell);
@interface PBScorecardOperationTableViewCell : UITableViewCell
@property(nonatomic, strong)PBScorecardOperationBlock PBScorecardOperationB;
@property(nonatomic, assign)int index;//第几个按钮
@property(nonatomic, assign)int hours;//时
@property(nonatomic, assign)int minutes;//分秒
@property(nonatomic, assign)int seconds;//秒
@property (nonatomic,strong )NSTimer *timer;//定时器
@property(nonatomic, strong)UIButton *PBStartButton;//开始按钮
@end

NS_ASSUME_NONNULL_END
