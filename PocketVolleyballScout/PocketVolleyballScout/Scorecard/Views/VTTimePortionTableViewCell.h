//
//  VTTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class VTScorecardViewModel;
@class VTTimePortionTableViewCell;
typedef void(^VTScorecardTimingBlock)(VTTimePortionTableViewCell *cell);
@interface VTTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)VTScorecardViewModel *VTModel;//数据模型
@property(nonatomic, assign)int VTHours;//时
@property(nonatomic, assign)int VTMinutes;//分秒
@property(nonatomic, assign)int VTSeconds;//秒
@property (nonatomic,strong )NSTimer *VTTimer;//定时器
@property(nonatomic, assign)NSUInteger VTIndex;
@property(nonatomic, strong)VTScorecardTimingBlock VTScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
