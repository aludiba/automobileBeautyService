//
//  AJgamePlanSaveModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AJgamePlanSaveModel : NSObject
@property(nonatomic, strong)NSDate *AJsaveDate;//保存时间
@property(nonatomic, assign)NSUInteger AJgameAges;//游戏龄
@property(nonatomic, strong)NSDate *AJtimeGiveGameDate;//戒游戏时间
@property(nonatomic, assign)NSUInteger AJgameEveryDay;//每天打几次
@property(nonatomic, assign)NSUInteger AJgameLong;//每次打多久

@property(nonatomic, strong)NSMutableArray *AJclockInSAndNumberB;//打卡日期数组以及当天打游戏次数
@property(nonatomic, assign)NSUInteger  AJcumulativeNubDays;//累计天数
@property(nonatomic, assign)NSUInteger  AJaccumulativeGames;//累计少打游戏次数
@property(nonatomic, assign)NSUInteger  AJcumulativeAmount;//累计少打游戏时间
@end

NS_ASSUME_NONNULL_END
