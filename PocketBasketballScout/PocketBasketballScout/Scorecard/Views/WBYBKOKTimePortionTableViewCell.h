//
//  WBYBKOKTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WBYBKOKScorecardViewModel;
@class WBYBKOKTimePortionTableViewCell;
typedef void(^WBYBKOKScorecardTimingBlock)(WBYBKOKTimePortionTableViewCell *cell);
@interface WBYBKOKTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)WBYBKOKScorecardViewModel *WBYBKOKModel;//数据模型
@property(nonatomic, assign)int WBYBKOKHours;//时
@property(nonatomic, assign)int WBYBKOKMinutes;//分秒
@property(nonatomic, assign)int WBYBKOKSeconds;//秒
@property (nonatomic,strong )NSTimer *WBYBKOKTimer;//定时器
@property(nonatomic, assign)NSUInteger WBYBKOKIndex;
@property(nonatomic, strong)WBYBKOKScorecardTimingBlock WBYBKOKScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
