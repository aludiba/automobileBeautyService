//
//  GFScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GFScorecardModel : NSObject
@property(nonatomic, copy)NSString *GFnatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *GFteamAName;//A队名称
@property(nonatomic, assign)NSUInteger GFteamANameScore;//A队得分
@property(nonatomic, copy)NSString *GFteamBName;//B队名称
@property(nonatomic, assign)NSUInteger GFteamBNameScore;//B队得分
@property(nonatomic, strong)NSString *GFtotalTimeString;//总共用时
@property(nonatomic, strong)NSString *GFendTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
