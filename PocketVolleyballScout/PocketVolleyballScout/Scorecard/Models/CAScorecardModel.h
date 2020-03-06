//
//  CAScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CAScorecardModel : NSObject
@property(nonatomic, copy)NSString *CAObjectId;//数据标识

@property(nonatomic, copy)NSString *CAbureauString;//当前是第几局
@property(nonatomic, copy)NSString *CANatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *CATeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger CATeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *CATeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger CATeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *CATotalTimeString;//总共用时
@property(nonatomic, strong)NSString *CAEndTimeString;//结束时间

@property(nonatomic, strong)NSMutableArray *CABureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
