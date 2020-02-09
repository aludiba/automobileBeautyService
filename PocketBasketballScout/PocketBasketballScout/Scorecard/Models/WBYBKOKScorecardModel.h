//
//  WBYBKOKScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WBYBKOKScorecardModel : NSObject
@property(nonatomic, copy)NSString *WBYBKOKObjectId;//数据标识

@property(nonatomic, copy)NSString *WBYBKOKNatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *WBYBKOKTeamRightName;//右边队伍名称
@property(nonatomic, assign)NSUInteger WBYBKOKTeamRightScore;//右边队伍得分
@property(nonatomic, copy)NSString *WBYBKOKTeamLeftName;//左边队伍名称
@property(nonatomic, assign)NSUInteger WBYBKOKTeamLeftScore;//左边队伍得分
@property(nonatomic, strong)NSString *WBYBKOKTotalTimeString;//总共用时
@property(nonatomic, strong)NSString *WBYBKOKEndTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
