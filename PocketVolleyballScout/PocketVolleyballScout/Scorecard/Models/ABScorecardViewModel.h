//
//  ABScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ABBureauPointsModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, ABScorecardCellType) {
    ABScorecardCellTypeBothTeams,
    ABScorecardCellTypeScoringPart,
    ABScorecardCellTypeTimePortion,
    ABScorecardCellTypeSummary,
    ABScorecardCellTypeSave,
};
@interface ABScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *ABbureauString;//当前是第几局
@property(nonatomic, copy)NSString *ABTeamRightName;//右队队名
@property(nonatomic, copy)NSString *ABTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *ABTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *ABTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger ABRightscore;//右队得分
@property(nonatomic, assign)NSUInteger ABLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger ABIndexTime;//时间状态
@property(nonatomic, assign)ABScorecardCellType cellType;//cell类型
@property(nonatomic, strong)NSMutableArray *ABBureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
