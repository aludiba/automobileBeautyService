//
//  ADScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, ADScorecardCellType) {
    ADScorecardCellTypeBothTeams,
    ADScorecardCellTypeScoringPart,
    ADScorecardCellTypeTimePortion,
    ADScorecardCellTypeSave,
};
@interface ADScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *ADTeamRightName;//右队队名
@property(nonatomic, copy)NSString *ADTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *ADTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *ADTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger ADRightscore;//右队得分
@property(nonatomic, assign)NSUInteger ADLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger ADIndexTime;//时间状态
@property(nonatomic, assign)ADScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
