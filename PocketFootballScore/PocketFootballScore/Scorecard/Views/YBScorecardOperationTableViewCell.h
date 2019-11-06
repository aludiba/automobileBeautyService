//
//  YBScorecardOperationTableViewCell.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YBScorecardOperationTableViewCell;
typedef void(^YBScorecardOperationBlock)(YBScorecardOperationTableViewCell *cell);
@interface YBScorecardOperationTableViewCell : UITableViewCell
@property(nonatomic, strong)YBScorecardOperationBlock YBScorecardOperationB;
@property(nonatomic, assign)int index;//第几个按钮
@property(nonatomic, assign)int hours;//时
@property(nonatomic, assign)int minutes;//分秒
@property(nonatomic, assign)int seconds;//秒
@property (nonatomic,strong )NSTimer *YBtimer;//定时器
@property(nonatomic, strong)UIButton *YBStartButton;//开始按钮
@end

NS_ASSUME_NONNULL_END
