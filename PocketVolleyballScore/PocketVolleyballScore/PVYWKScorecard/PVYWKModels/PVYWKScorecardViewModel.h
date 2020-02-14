//
//  PVYWKScorecardViewModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PVYWKBureauPointsModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, PVYWKScorecardCellType) {
    PVYWKScorecardCellTypeTitle,
    PVYWKScorecardCellTypeTimeStatistics,
    PVYWKScorecardCellTypeScoreStatistics,
    PVYWKScorecardCellTypeOperation,
    PVYWKScorecardCellTypeSummary,
    PVYWKScorecardCellTypeSave,
};
typedef NS_ENUM(NSInteger, PVYWKScorecardHomeTeamOrVisitingTeamType) {
    PVYWKScorecardHomeTeamOrVisitingTeamTypeHome,
    PVYWKScorecardHomeTeamOrVisitingTeamTypeVisiting,
};
@interface PVYWKScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *PVYWKnatureCompetitionString;//比赛性质
@property(nonatomic, copy)NSString *PVYWKbureauString;//当前是第几局
@property(nonatomic, copy)NSString *PVYWKteamName;//队名
@property(nonatomic, strong)NSDate *PVYWKtimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *PVYWKtimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)PVYWKScorecardHomeTeamOrVisitingTeamType  teamStatusType;
@property(nonatomic, assign)NSUInteger score;//得分
@property(nonatomic, assign)PVYWKScorecardCellType cellType;//cell类型
@property(nonatomic, strong)NSMutableArray *PVYWKBureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
