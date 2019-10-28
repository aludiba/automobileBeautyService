//
//  PFScorecardViewModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, PFScorecardCellType) {
    PFScorecardCellTypeTitle,
    PFScorecardCellTypeTimeStatistics,
    PFScorecardCellTypeScoreStatistics,
    PFScorecardCellTypeOperation,
};
@interface PFScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *PFnatureCompetitionString;//比赛性质
@property(nonatomic, copy)NSString *PFteamName;//队名
@property(nonatomic, strong)NSDate *PFtimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *PFtimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger score;//得分
@property(nonatomic, assign)PFScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
