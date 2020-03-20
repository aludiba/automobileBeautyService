//
//  GATimePortionTableViewCell.h
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAScorecardViewModel;
@class GATimePortionTableViewCell;
typedef void(^GAScorecardTimingBlock)(GATimePortionTableViewCell *cell);
@interface GATimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)GAScorecardViewModel *GAModel;//数据模型
@property(nonatomic, assign)int GAHours;//时
@property(nonatomic, assign)int GAMinutes;//分秒
@property(nonatomic, assign)int GASeconds;//秒
@property (nonatomic,strong )NSTimer *GATimer;//定时器
@property(nonatomic, assign)NSUInteger GAIndex;
@property(nonatomic, strong)GAScorecardTimingBlock GAScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
