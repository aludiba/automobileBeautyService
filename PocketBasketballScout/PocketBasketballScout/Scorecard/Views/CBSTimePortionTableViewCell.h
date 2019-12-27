//
//  CBSTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CBSScorecardViewModel;
@class CBSTimePortionTableViewCell;
typedef void(^CBSScorecardTimingBlock)(CBSTimePortionTableViewCell *cell);
@interface CBSTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)CBSScorecardViewModel *CBSModel;//数据模型
@property(nonatomic, assign)int CBSHours;//时
@property(nonatomic, assign)int CBSMinutes;//分秒
@property(nonatomic, assign)int CBSSeconds;//秒
@property (nonatomic,strong )NSTimer *CBSTimer;//定时器
@property(nonatomic, assign)NSUInteger CBSIndex;
@property(nonatomic, strong)CBSScorecardTimingBlock CBSScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
