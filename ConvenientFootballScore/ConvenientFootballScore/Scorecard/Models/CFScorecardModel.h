//
//  KTScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KTScorecardModel : NSObject
@property(nonatomic, copy)NSString *KTObjectId;//数据标识

@property(nonatomic, copy)NSString *KTNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *KTTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger KTTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *KTTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger KTTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *KTTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *KTEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
