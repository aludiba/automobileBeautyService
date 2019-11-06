//
//  YBScorecardViewModel.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, YBScorecardCellType) {
    YBScorecardCellTypeTitle,
    YBScorecardCellTypeTimeStatistics,
    YBScorecardCellTypeScoreStatistics,
    YBScorecardCellTypeOperation,
};
@interface YBScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *YBnatureCompetitionString;//比赛性质
@property(nonatomic, copy)NSString *YBteamName;//队名
@property(nonatomic, strong)NSDate *YBtimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *YBtimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger score;//得分
@property(nonatomic, assign)YBScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
