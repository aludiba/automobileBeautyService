//
//  PBScorecardViewModel.h
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, PBScorecardCellType) {
    PBScorecardCellTypeTimeStatistics,
    PBScorecardCellTypeScoreStatistics,
    PBScorecardCellTypeOperation,
};
@interface PBScorecardViewModel : NSObject
@property(nonatomic, copy)NSString *teamName;
@property(nonatomic, strong)NSDate *timeStatisticsDate;
@property(nonatomic, assign)NSUInteger score;//得分
@property(nonatomic, assign)PBScorecardCellType cellType;//cell类型
@end

NS_ASSUME_NONNULL_END
