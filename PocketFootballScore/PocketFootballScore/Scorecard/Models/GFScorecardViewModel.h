//
//  GFScorecardViewModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, GFScorecardCellType) {
    GFScorecardCellTypeTitle,
    GFScorecardCellTypeTimeStatistics,
    GFScorecardCellTypeScoreStatistics,
    GFScorecardCellTypeOperation,
};
@interface GFScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *GFnatureCompetitionString;//比赛性质
@property(nonatomic, copy)NSString *GFteamName;//队名
@property(nonatomic, strong)NSDate *GFtimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *GFtimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger score;//得分
@property(nonatomic, assign)GFScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
