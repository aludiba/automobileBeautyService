//
//  YBPBSScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, YBPBSScorecardCellType) {
    YBPBSScorecardCellTypeBothTeams,
    YBPBSScorecardCellTypeScoringPart,
    YBPBSScorecardCellTypeTimePortion,
    YBPBSScorecardCellTypeSave,
};
@interface YBPBSScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *YBPBSTeamRightName;//右队队名
@property(nonatomic, copy)NSString *YBPBSTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *YBPBSTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *YBPBSTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger YBPBSRightscore;//右队得分
@property(nonatomic, assign)NSUInteger YBPBSLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger YBPBSIndexTime;//时间状态
@property(nonatomic, assign)YBPBSScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
