//
//  PBScorecardViewModel.h
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, PBScorecardCellType) {
    PBScorecardCellTypeTitle,
    PBScorecardCellTypeTimeStatistics,
    PBScorecardCellTypeScoreStatistics,
    PBScorecardCellTypeOperation,
};
@interface PBScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *natureCompetitionString;//比赛性质
@property(nonatomic, copy)NSString *teamName;//队名
@property(nonatomic, strong)NSDate *timeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *timeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger score;//得分
@property(nonatomic, assign)PBScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
