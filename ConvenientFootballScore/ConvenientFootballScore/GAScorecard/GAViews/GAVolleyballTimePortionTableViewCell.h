//
//  GAVolleyballTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAVolleyballScorecardModel;
@class GAVolleyballScorecardViewModel;
@class GAVolleyballTimePortionTableViewCell;
typedef void(^GAScorecardTimingBlock)(GAVolleyballTimePortionTableViewCell *cell);
@interface GAVolleyballTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)GAVolleyballScorecardModel *GAScoreModel;//记录模型
@property(nonatomic, strong)GAVolleyballScorecardViewModel *GAModel;//数据模型
@property(nonatomic, assign)int GAHours;//时
@property(nonatomic, assign)int GAMinutes;//分秒
@property(nonatomic, assign)int GASeconds;//秒
@property (nonatomic,strong )NSTimer *GATimer;//定时器
@property(nonatomic, assign)NSUInteger GAIndex;
@property(nonatomic, strong)GAScorecardTimingBlock GAScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
