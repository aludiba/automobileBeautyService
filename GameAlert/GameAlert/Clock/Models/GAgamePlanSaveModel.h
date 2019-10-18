//
//  GAgamePlanSaveModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GAgamePlanSaveModel : NSObject
@property(nonatomic, strong)NSDate *GAsaveDate;//保存时间
@property(nonatomic, assign)NSUInteger GAgameAges;//游戏龄
@property(nonatomic, strong)NSDate *GAtimeGiveGameDate;//戒游戏时间
@property(nonatomic, assign)NSUInteger GAgameEveryDay;//每天打几次
@property(nonatomic, assign)NSUInteger GAgameLong;//每次打多久


@property(nonatomic, strong)NSMutableArray *GAclockInSAndNumberB;//打卡日期数组以及当天打游戏瓶数
//@property(nonatomic, assign)NSUInteger numberGamesPlayed;//当天打游戏次数
@property(nonatomic, assign)NSUInteger  GAcumulativeNubDays;//累计天数
@property(nonatomic, assign)NSUInteger  GAaccumulativeGames;//累计少打游戏次数
@property(nonatomic, assign)NSUInteger  GAcumulativeAmount;//累计少打游戏时间
@end

NS_ASSUME_NONNULL_END
