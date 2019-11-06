//
//  YBScorecardModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YBScorecardModel : NSObject
@property(nonatomic, copy)NSString *YBnatureCompetition;//比赛性质
@property(nonatomic, copy)NSString *YBteamAName;//A队名称
@property(nonatomic, assign)NSUInteger YBteamANameScore;//A队得分
@property(nonatomic, copy)NSString *YBteamBName;//B队名称
@property(nonatomic, assign)NSUInteger YBteamBNameScore;//B队得分
@property(nonatomic, strong)NSString *YBtotalTimeString;//总共用时
@property(nonatomic, strong)NSString *YBendTimeString;//结束时间
@end

NS_ASSUME_NONNULL_END
