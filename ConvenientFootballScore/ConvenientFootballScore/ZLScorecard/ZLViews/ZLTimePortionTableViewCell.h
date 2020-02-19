//
//  ZLTimePortionTableViewCell.h
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ZLScorecardViewModel;
@class ZLTimePortionTableViewCell;
typedef void(^ZLScorecardTimingBlock)(ZLTimePortionTableViewCell *cell);
@interface ZLTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)ZLScorecardViewModel *ZLModel;//数据模型
@property(nonatomic, assign)int ZLHours;//时
@property(nonatomic, assign)int ZLMinutes;//分秒
@property(nonatomic, assign)int ZLSeconds;//秒
@property (nonatomic,strong )NSTimer *ZLTimer;//定时器
@property(nonatomic, assign)NSUInteger ZLIndex;
@property(nonatomic, strong)ZLScorecardTimingBlock ZLScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
