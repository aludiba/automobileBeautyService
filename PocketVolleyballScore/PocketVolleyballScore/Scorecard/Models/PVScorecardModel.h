//
//  PVScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PVScorecardModel : NSObject
@property(nonatomic, copy)NSString *PVnatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *PVteamAName;//A队名称
@property(nonatomic, assign)NSUInteger PVteamANameScore;//A队得分
@property(nonatomic, copy)NSString *PVteamBName;//B队名称
@property(nonatomic, assign)NSUInteger PVteamBNameScore;//B队得分
@property(nonatomic, strong)NSString *PVtotalTimeString;//总共用时
@property(nonatomic, strong)NSString *PVendTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
