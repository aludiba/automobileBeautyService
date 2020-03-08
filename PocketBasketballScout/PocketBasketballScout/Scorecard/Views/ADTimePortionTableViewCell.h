//
//  ADTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ADScorecardViewModel;
@class ADTimePortionTableViewCell;
typedef void(^ADScorecardTimingBlock)(ADTimePortionTableViewCell *cell);
@interface ADTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)ADScorecardViewModel *ADModel;//数据模型
@property(nonatomic, assign)int ADHours;//时
@property(nonatomic, assign)int ADMinutes;//分秒
@property(nonatomic, assign)int ADSeconds;//秒
@property (nonatomic,strong )NSTimer *ADTimer;//定时器
@property(nonatomic, assign)NSUInteger ADIndex;
@property(nonatomic, strong)ADScorecardTimingBlock ADScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
