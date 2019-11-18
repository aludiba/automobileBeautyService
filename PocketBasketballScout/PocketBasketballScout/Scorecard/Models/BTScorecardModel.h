//
//  BTScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BTScorecardModel : NSObject
@property(nonatomic, copy)NSString *BTObjectId;//数据标识

@property(nonatomic, copy)NSString *BTNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *BTTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger BTTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *BTTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger BTTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *BTTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *BTEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
