//
//  CVSScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CVSScorecardModel : NSObject
@property(nonatomic, copy)NSString *CVSObjectId;//数据标识

@property(nonatomic, copy)NSString *CVSbureauString;//当前是第几局
@property(nonatomic, copy)NSString *CVSNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *CVSTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger CVSTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *CVSTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger CVSTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *CVSTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *CVSEndTimeString;//结束时间

@property(nonatomic, strong)NSMutableArray *CVSBureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
