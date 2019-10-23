//
//  PBScorecardModel.h
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PBScorecardModel : NSObject
@property(nonatomic, copy)NSString *natureCompetition;//比赛性质
@property(nonatomic, copy)NSString *teamAName;//A队名称
@property(nonatomic, assign)NSUInteger teamANameScore;//A队得分
@property(nonatomic, copy)NSString *teamBName;//B队名称
@property(nonatomic, assign)NSUInteger teamBNameScore;//B队得分
@property(nonatomic, strong)NSDate *totalTime;//总共用时
@property(nonatomic, strong)NSDate *endTime;//结束时间
@end

NS_ASSUME_NONNULL_END
