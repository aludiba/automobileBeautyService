//
//  GAScorecardDataDetailViewController.h
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/25.
//  Copyright © 2020 com. All rights reserved.
//

#import "GABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GAScorecardDataDetailViewController;
typedef void(^GAScorecardDataDetailViewControllerBlock)(GAScorecardDataDetailViewController *vc);

@interface GAScorecardDataDetailViewController: GABaseViewController
@property(nonatomic, strong)GAScorecardDataDetailViewControllerBlock GAScorecardDataDetailViewControllerB;
@property(nonatomic, assign)BOOL GAisBack;
@property(nonatomic, copy)NSString *GAGameStatistics;//比赛统计
@end

NS_ASSUME_NONNULL_END
