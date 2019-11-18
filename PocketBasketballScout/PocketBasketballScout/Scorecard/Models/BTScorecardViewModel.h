//
//  BTScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, BTScorecardCellType) {
    BTScorecardCellTypeBothTeams,
    BTScorecardCellTypeScoringPart,
    BTScorecardCellTypeTimePortion,
    BTScorecardCellTypeSave,
};
@interface BTScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *BTTeamRightName;//右队队名
@property(nonatomic, copy)NSString *BTTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *BTTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *BTTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger BTRightscore;//右队得分
@property(nonatomic, assign)NSUInteger BTLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger BTIndexTime;//时间状态
@property(nonatomic, assign)BTScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
