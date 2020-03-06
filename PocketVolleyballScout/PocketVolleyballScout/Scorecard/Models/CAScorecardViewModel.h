//
//  CAScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CABureauPointsModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, CAScorecardCellType) {
    CAScorecardCellTypeBothTeams,
    CAScorecardCellTypeScoringPart,
    CAScorecardCellTypeTimePortion,
    CAScorecardCellTypeSummary,
    CAScorecardCellTypeSave,
};
@interface CAScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *CAbureauString;//当前是第几局
@property(nonatomic, copy)NSString *CATeamRightName;//右队队名
@property(nonatomic, copy)NSString *CATeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *CATimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *CATimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger CARightscore;//右队得分
@property(nonatomic, assign)NSUInteger CALeftscore;//左队得分
@property(nonatomic, assign)NSUInteger CAIndexTime;//时间状态
@property(nonatomic, assign)CAScorecardCellType cellType;//cell类型
@property(nonatomic, strong)NSMutableArray *CABureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
