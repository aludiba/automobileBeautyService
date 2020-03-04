//
//  ABTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ABScorecardModel;
@class ABScorecardViewModel;
@class ABTimePortionTableViewCell;
typedef void(^ABScorecardTimingBlock)(ABTimePortionTableViewCell *cell);
@interface ABTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)ABScorecardModel *ABScoreModel;//记录模型
@property(nonatomic, strong)ABScorecardViewModel *ABModel;//数据模型
@property(nonatomic, assign)int ABHours;//时
@property(nonatomic, assign)int ABMinutes;//分秒
@property(nonatomic, assign)int ABSeconds;//秒
@property (nonatomic,strong )NSTimer *ABTimer;//定时器
@property(nonatomic, assign)NSUInteger ABIndex;
@property(nonatomic, strong)ABScorecardTimingBlock ABScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
