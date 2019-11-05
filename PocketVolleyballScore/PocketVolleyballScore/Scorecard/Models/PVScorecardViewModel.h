//
//  PVScorecardViewModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, PVScorecardCellType) {
    PVScorecardCellTypeTitle,
    PVScorecardCellTypeTimeStatistics,
    PVScorecardCellTypeScoreStatistics,
    PVScorecardCellTypeOperation,
};
@interface PVScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *PVnatureCompetitionString;//比赛性质
@property(nonatomic, copy)NSString *PVbureauString;//当前是第几局
@property(nonatomic, copy)NSString *PVteamName;//队名
@property(nonatomic, strong)NSDate *PVtimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *PVtimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger score;//得分
@property(nonatomic, assign)PVScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
