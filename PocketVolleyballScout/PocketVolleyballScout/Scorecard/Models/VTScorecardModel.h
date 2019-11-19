//
//  VTScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VTScorecardModel : NSObject
@property(nonatomic, copy)NSString *VTObjectId;//数据标识

@property(nonatomic, copy)NSString *VTNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *VTTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger VTTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *VTTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger VTTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *VTTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *VTEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
