//
//  CFScorecardViewModel.h
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, CFScorecardCellType) {
    CFScorecardCellTypeBothTeams,
    CFScorecardCellTypeScoringPart,
    CFScorecardCellTypeTimePortion,
    CFScorecardCellTypeSave,
};
@interface CFScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *CFTeamRightName;//右队队名
@property(nonatomic, copy)NSString *CFTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *CFTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *CFTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger CFRightscore;//右队得分
@property(nonatomic, assign)NSUInteger CFLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger CFIndexTime;//时间状态
@property(nonatomic, assign)CFScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
