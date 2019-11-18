//
//  BTTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BTScorecardViewModel;
@class BTTimePortionTableViewCell;
typedef void(^BTScorecardTimingBlock)(BTTimePortionTableViewCell *cell);
@interface BTTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)BTScorecardViewModel *BTModel;//数据模型
@property(nonatomic, assign)int BTHours;//时
@property(nonatomic, assign)int BTMinutes;//分秒
@property(nonatomic, assign)int BTSeconds;//秒
@property (nonatomic,strong )NSTimer *BTTimer;//定时器
@property(nonatomic, assign)NSUInteger BTIndex;
@property(nonatomic, strong)BTScorecardTimingBlock BTScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
