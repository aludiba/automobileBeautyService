//
//  KTScorecardViewModel.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, KTScorecardCellType) {
    KTScorecardCellTypeBothTeams,
    KTScorecardCellTypeScoringPart,
    KTScorecardCellTypeTimePortion,
    KTScorecardCellTypeSave,
};
@interface KTScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *KTTeamRightName;//右队队名
@property(nonatomic, copy)NSString *KTTeamLeftName;//左队队名
@property(nonatomic, strong)NSDate *KTTimeStatisticsDate;//比赛时长
@property(nonatomic, copy)NSString *KTTimeStatisticsDateString;//比赛时长字符串
@property(nonatomic, assign)NSUInteger KTRightscore;//右队得分
@property(nonatomic, assign)NSUInteger KTLeftscore;//左队得分
@property(nonatomic, assign)NSUInteger KTIndexTime;//时间状态
@property(nonatomic, assign)KTScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
