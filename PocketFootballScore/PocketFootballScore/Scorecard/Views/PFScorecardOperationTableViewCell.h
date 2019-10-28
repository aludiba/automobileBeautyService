//
//  PFScorecardOperationTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PFScorecardOperationTableViewCell;
typedef void(^PFScorecardOperationBlock)(PFScorecardOperationTableViewCell *cell);
@interface PFScorecardOperationTableViewCell : UITableViewCell
@property(nonatomic, strong)PFScorecardOperationBlock PFScorecardOperationB;
@property(nonatomic, assign)int index;//第几个按钮
@property(nonatomic, assign)int hours;//时
@property(nonatomic, assign)int minutes;//分秒
@property(nonatomic, assign)int seconds;//秒
@property (nonatomic,strong )NSTimer *PFtimer;//定时器
@property(nonatomic, strong)UIButton *PFStartButton;//开始按钮
@end

NS_ASSUME_NONNULL_END
