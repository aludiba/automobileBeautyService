//
//  GAScorecardViewModel.h
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, GAScorecardCellType) {
    GAScorecardCellTypeBothTeams,
    GAScorecardCellTypeScoringPart,
    GAScorecardCellTypeTimePortion,
    GAScorecardCellTypeSave,
};
@interface GAScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *GATeamRightName;//右队队名
@property(nonatomic, copy)NSString *GATeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *GATimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *GATimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger GARightscore;//右队得分
@property(nonatomic, assign)NSUInteger GALeftscore;//左队得分
@property(nonatomic, assign)NSUInteger GAIndexTime;//时间状态
@property(nonatomic, assign)GAScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
