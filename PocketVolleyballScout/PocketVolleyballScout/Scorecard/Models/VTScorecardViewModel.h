//
//  VTScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, VTScorecardCellType) {
    VTScorecardCellTypeBothTeams,
    VTScorecardCellTypeScoringPart,
    VTScorecardCellTypeTimePortion,
    VTScorecardCellTypeSave,
};
@interface VTScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *VTTeamRightName;//右队队名
@property(nonatomic, copy)NSString *VTTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *VTTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *VTTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger VTRightscore;//右队得分
@property(nonatomic, assign)NSUInteger VTLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger VTIndexTime;//时间状态
@property(nonatomic, assign)VTScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
