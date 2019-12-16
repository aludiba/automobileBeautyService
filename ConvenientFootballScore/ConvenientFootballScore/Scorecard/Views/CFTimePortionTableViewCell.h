//
//  CFTimePortionTableViewCell.h
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CFScorecardViewModel;
@class CFTimePortionTableViewCell;
typedef void(^CFScorecardTimingBlock)(CFTimePortionTableViewCell *cell);
@interface CFTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)CFScorecardViewModel *CFModel;//数据模型
@property(nonatomic, assign)int CFHours;//时
@property(nonatomic, assign)int CFMinutes;//分秒
@property(nonatomic, assign)int CFSeconds;//秒
@property (nonatomic,strong )NSTimer *CFTimer;//定时器
@property(nonatomic, assign)NSUInteger CFIndex;
@property(nonatomic, strong)CFScorecardTimingBlock CFScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
