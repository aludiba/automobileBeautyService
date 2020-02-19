//
//  ZLBasketballScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, ZLScorecardCellType) {
    ZLScorecardCellTypeBothTeams,
    ZLScorecardCellTypeScoringPart,
    ZLScorecardCellTypeTimePortion,
    ZLScorecardCellTypeSave,
};
@interface ZLBasketballScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *ZLTeamRightName;//右队队名
@property(nonatomic, copy)NSString *ZLTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *ZLTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *ZLTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger ZLRightscore;//右队得分
@property(nonatomic, assign)NSUInteger ZLLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger ZLIndexTime;//时间状态
@property(nonatomic, assign)ZLScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
