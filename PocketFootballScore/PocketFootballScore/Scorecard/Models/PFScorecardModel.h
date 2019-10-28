//
//  PFScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PFScorecardModel : NSObject
@property(nonatomic, copy)NSString *PFnatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *PFteamAName;//A队名称
@property(nonatomic, assign)NSUInteger PFteamANameScore;//A队得分
@property(nonatomic, copy)NSString *PFteamBName;//B队名称
@property(nonatomic, assign)NSUInteger PFteamBNameScore;//B队得分
@property(nonatomic, strong)NSString *PFtotalTimeString;//总共用时
@property(nonatomic, strong)NSString *PFendTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
