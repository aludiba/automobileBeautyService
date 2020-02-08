//
//  YBPBSTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YBPBSScorecardViewModel;
@class YBPBSTimePortionTableViewCell;
typedef void(^YBPBSScorecardTimingBlock)(YBPBSTimePortionTableViewCell *cell);
@interface YBPBSTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)YBPBSScorecardViewModel *YBPBSModel;//数据模型
@property(nonatomic, assign)int YBPBSHours;//时
@property(nonatomic, assign)int YBPBSMinutes;//分秒
@property(nonatomic, assign)int YBPBSSeconds;//秒
@property (nonatomic,strong )NSTimer *YBPBSTimer;//定时器
@property(nonatomic, assign)NSUInteger YBPBSIndex;
@property(nonatomic, strong)YBPBSScorecardTimingBlock YBPBSScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
