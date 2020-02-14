//
//  PVYWKScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PVYWKBureauPointsModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PVYWKScorecardModel : NSObject
@property(nonatomic, copy)NSString *PVYWKnatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *PVYWKteamAName;//A队名称
@property(nonatomic, assign)NSUInteger PVYWKteamANameScore;//A队得分
@property(nonatomic, copy)NSString *PVYWKteamBName;//B队名称
@property(nonatomic, assign)NSUInteger PVYWKteamBNameScore;//B队得分
@property(nonatomic, strong)NSString *PVYWKtotalTimeString;//总共用时
@property(nonatomic, strong)NSString *PVYWKendTimeString;//结束时间
@property(nonatomic, strong)NSMutableArray *PVYWKBureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
