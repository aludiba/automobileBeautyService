//
//  KTTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class KTScorecardViewModel;
@class KTTimePortionTableViewCell;
typedef void(^KTScorecardTimingBlock)(KTTimePortionTableViewCell *cell);
@interface KTTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)KTScorecardViewModel *KTModel;//数据模型
@property(nonatomic, assign)int KTHours;//时
@property(nonatomic, assign)int KTMinutes;//分秒
@property(nonatomic, assign)int KTSeconds;//秒
@property (nonatomic,strong )NSTimer *KTTimer;//定时器
@property(nonatomic, assign)NSUInteger KTIndex;
@property(nonatomic, strong)KTScorecardTimingBlock KTScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
