//
//  ABScorecardDataDetailViewController.h
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/25.
//  Copyright © 2020 com. All rights reserved.
//

#import "ABBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class ABScorecardDataDetailViewController;
typedef void(^ABScorecardDataDetailViewControllerBlock)(ABScorecardDataDetailViewController *vc);

@interface ABScorecardDataDetailViewController: ABBaseViewController
@property(nonatomic, strong)ABScorecardDataDetailViewControllerBlock ABScorecardDataDetailViewControllerB;
@property(nonatomic, assign)BOOL ABisBack;
@property(nonatomic, copy)NSString *ABGameStatistics;//比赛统计
@end

NS_ASSUME_NONNULL_END
