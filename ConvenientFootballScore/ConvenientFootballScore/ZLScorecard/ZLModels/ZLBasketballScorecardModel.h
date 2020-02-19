//
//  ZLBasketballScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZLBasketballScorecardModel : NSObject
@property(nonatomic, copy)NSString *ZLObjectId;//数据标识

@property(nonatomic, copy)NSString *ZLNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *ZLTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger ZLTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *ZLTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger ZLTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *ZLTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *ZLEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
