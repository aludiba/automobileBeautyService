//
//  PVScorecardViewModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PVBureauPointsModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, PVScorecardCellType) {
    PVScorecardCellTypeTitle,
    PVScorecardCellTypeTimeStatistics,
    PVScorecardCellTypeScoreStatistics,
    PVScorecardCellTypeOperation,
    PVScorecardCellTypeSummary,
    PVScorecardCellTypeSave,
};
typedef NS_ENUM(NSInteger, PVScorecardHomeTeamOrVisitingTeamType) {
    PVScorecardHomeTeamOrVisitingTeamTypeHome,
    PVScorecardHomeTeamOrVisitingTeamTypeVisiting,
};
@interface PVScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *PVnatureCompetitionString;//比赛性质
@property(nonatomic, copy)NSString *PVbureauString;//当前是第几局
@property(nonatomic, copy)NSString *PVteamName;//队名
@property(nonatomic, strong)NSDate *PVtimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *PVtimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)PVScorecardHomeTeamOrVisitingTeamType  teamStatusType;
@property(nonatomic, assign)NSUInteger score;//得分
@property(nonatomic, assign)PVScorecardCellType cellType;//cell类型
@property(nonatomic, strong)NSMutableArray *PVBureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
