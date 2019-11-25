//
//  VTScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VTBureauPointsModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, VTScorecardCellType) {
    VTScorecardCellTypeBothTeams,
    VTScorecardCellTypeScoringPart,
    VTScorecardCellTypeTimePortion,
    VTScorecardCellTypeSummary,
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
@property(nonatomic, strong)NSMutableArray *VTBureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
