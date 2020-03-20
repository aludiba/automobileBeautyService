//
//  AFgamePlanSaveModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFgamePlanSaveModel : NSObject
@property(nonatomic, strong)NSDate *AFsaveDate;//保存时间
@property(nonatomic, assign)NSUInteger AFgameAges;//游戏龄
@property(nonatomic, strong)NSDate *AFtimeGiveGameDate;//戒游戏时间
@property(nonatomic, assign)NSUInteger AFgameEveryDay;//每天打几次
@property(nonatomic, assign)NSUInteger AFgameLong;//每次打多久

@property(nonatomic, strong)NSMutableArray *AFclockInSAndNumberB;//打卡日期数组以及当天打游戏次数
@property(nonatomic, assign)NSUInteger  AFcumulativeNubDays;//累计天数
@property(nonatomic, assign)NSUInteger  AFaccumulativeGames;//累计少打游戏次数
@property(nonatomic, assign)NSUInteger  AFcumulativeAmount;//累计少打游戏时间
@end

NS_ASSUME_NONNULL_END
