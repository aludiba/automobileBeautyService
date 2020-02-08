//
//  YBPBSScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YBPBSScorecardModel : NSObject
@property(nonatomic, copy)NSString *YBPBSObjectId;//数据标识

@property(nonatomic, copy)NSString *YBPBSNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *YBPBSTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger YBPBSTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *YBPBSTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger YBPBSTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *YBPBSTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *YBPBSEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
