//
//  CBSScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CBSScorecardModel : NSObject
@property(nonatomic, copy)NSString *CBSObjectId;//数据标识

@property(nonatomic, copy)NSString *CBSNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *CBSTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger CBSTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *CBSTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger CBSTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *CBSTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *CBSEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
