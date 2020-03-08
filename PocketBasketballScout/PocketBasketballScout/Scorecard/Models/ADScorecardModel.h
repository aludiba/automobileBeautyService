//
//  ADScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADScorecardModel : NSObject
@property(nonatomic, copy)NSString *ADObjectId;//数据标识

@property(nonatomic, copy)NSString *ADNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *ADTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger ADTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *ADTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger ADTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *ADTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *ADEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
