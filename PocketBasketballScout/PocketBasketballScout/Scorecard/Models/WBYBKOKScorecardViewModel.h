//
//  WBYBKOKScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, WBYBKOKScorecardCellType) {
    WBYBKOKScorecardCellTypeBothTeams,
    WBYBKOKScorecardCellTypeScoringPart,
    WBYBKOKScorecardCellTypeTimePortion,
    WBYBKOKScorecardCellTypeSave,
};
@interface WBYBKOKScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *WBYBKOKTeamRightName;//右队队名
@property(nonatomic, copy)NSString *WBYBKOKTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *WBYBKOKTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *WBYBKOKTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger WBYBKOKRightscore;//右队得分
@property(nonatomic, assign)NSUInteger WBYBKOKLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger WBYBKOKIndexTime;//时间状态
@property(nonatomic, assign)WBYBKOKScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
