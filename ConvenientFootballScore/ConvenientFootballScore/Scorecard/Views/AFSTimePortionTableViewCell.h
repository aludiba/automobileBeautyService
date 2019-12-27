//
//  AFSTimePortionTableViewCell.h
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AFSScorecardViewModel;
@class AFSTimePortionTableViewCell;
typedef void(^AFSScorecardTimingBlock)(AFSTimePortionTableViewCell *cell);
@interface AFSTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)AFSScorecardViewModel *AFSModel;//数据模型
@property(nonatomic, assign)int AFSHours;//时
@property(nonatomic, assign)int AFSMinutes;//分秒
@property(nonatomic, assign)int AFSSeconds;//秒
@property (nonatomic,strong )NSTimer *AFSTimer;//定时器
@property(nonatomic, assign)NSUInteger AFSIndex;
@property(nonatomic, strong)AFSScorecardTimingBlock AFSScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
