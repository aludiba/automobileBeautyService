//
//  CVSScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CVSBureauPointsModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, CVSScorecardCellType) {
    CVSScorecardCellTypeBothTeams,
    CVSScorecardCellTypeScoringPart,
    CVSScorecardCellTypeTimePortion,
    CVSScorecardCellTypeSummary,
    CVSScorecardCellTypeSave,
};
@interface CVSScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *CVSbureauString;//当前是第几局
@property(nonatomic, copy)NSString *CVSTeamRightName;//右队队名
@property(nonatomic, copy)NSString *CVSTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *CVSTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *CVSTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger CVSRightscore;//右队得分
@property(nonatomic, assign)NSUInteger CVSLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger CVSIndexTime;//时间状态
@property(nonatomic, assign)CVSScorecardCellType cellType;//cell类型
@property(nonatomic, strong)NSMutableArray *CVSBureauPointsArray;//每一局得分的记录数组
@property(nonatomic, copy)NSString *totalAcoreString;//总得分
@end

NS_ASSUME_NONNULL_END
