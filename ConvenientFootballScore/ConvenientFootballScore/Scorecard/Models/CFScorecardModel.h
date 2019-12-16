//
//  CFScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CFScorecardModel : NSObject
@property(nonatomic, copy)NSString *CFObjectId;//数据标识

@property(nonatomic, copy)NSString *CFNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *CFTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger CFTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *CFTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger CFTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *CFTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *CFEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
