//
//  GAScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GAScorecardModel : NSObject
@property(nonatomic, copy)NSString *GAObjectId;//数据标识

@property(nonatomic, copy)NSString *GANatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *GATeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger GATeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *GATeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger GATeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *GATotalTimeString;//总共用时
@property(nonatomic, strong)NSString *GAEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
