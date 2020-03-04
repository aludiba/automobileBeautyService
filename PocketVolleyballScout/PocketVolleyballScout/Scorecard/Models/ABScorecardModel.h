//
//  ABScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ABScorecardModel : NSObject
@property(nonatomic, copy)NSString *ABObjectId;//数据标识

@property(nonatomic, copy)NSString *ABbureauString;//当前是第几局
@property(nonatomic, copy)NSString *ABNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *ABTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger ABTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *ABTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger ABTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *ABTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *ABEndTimeString;//结束时间

@property(nonatomic, strong)NSMutableArray *ABBureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
