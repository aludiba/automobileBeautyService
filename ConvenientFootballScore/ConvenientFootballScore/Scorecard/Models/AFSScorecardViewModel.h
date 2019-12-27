//
//  AFSScorecardViewModel.h
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, AFSScorecardCellType) {
    AFSScorecardCellTypeBothTeams,
    AFSScorecardCellTypeScoringPart,
    AFSScorecardCellTypeTimePortion,
    AFSScorecardCellTypeSave,
};
@interface AFSScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *AFSTeamRightName;//右队队名
@property(nonatomic, copy)NSString *AFSTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *AFSTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *AFSTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger AFSRightscore;//右队得分
@property(nonatomic, assign)NSUInteger AFSLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger AFSIndexTime;//时间状态
@property(nonatomic, assign)AFSScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
