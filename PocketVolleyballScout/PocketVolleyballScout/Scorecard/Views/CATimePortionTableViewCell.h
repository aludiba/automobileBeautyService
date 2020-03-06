//
//  CATimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CAScorecardModel;
@class CAScorecardViewModel;
@class CATimePortionTableViewCell;
typedef void(^CAScorecardTimingBlock)(CATimePortionTableViewCell *cell);
@interface CATimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)CAScorecardModel *CAScoreModel;//记录模型
@property(nonatomic, strong)CAScorecardViewModel *CAModel;//数据模型
@property(nonatomic, assign)int CAHours;//时
@property(nonatomic, assign)int CAMinutes;//分秒
@property(nonatomic, assign)int CASeconds;//秒
@property (nonatomic,strong )NSTimer *CATimer;//定时器
@property(nonatomic, assign)NSUInteger CAIndex;
@property(nonatomic, strong)CAScorecardTimingBlock CAScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
