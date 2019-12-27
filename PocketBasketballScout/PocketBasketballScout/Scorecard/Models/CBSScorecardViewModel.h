//
//  CBSScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, CBSScorecardCellType) {
    CBSScorecardCellTypeBothTeams,
    CBSScorecardCellTypeScoringPart,
    CBSScorecardCellTypeTimePortion,
    CBSScorecardCellTypeSave,
};
@interface CBSScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *CBSTeamRightName;//右队队名
@property(nonatomic, copy)NSString *CBSTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *CBSTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *CBSTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger CBSRightscore;//右队得分
@property(nonatomic, assign)NSUInteger CBSLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger CBSIndexTime;//时间状态
@property(nonatomic, assign)CBSScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
