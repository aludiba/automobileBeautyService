//
//  ZLScorecardDataDetailViewController.h
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/25.
//  Copyright © 2020 com. All rights reserved.
//

#import "ZLBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class ZLScorecardDataDetailViewController;
typedef void(^ZLScorecardDataDetailViewControllerBlock)(ZLScorecardDataDetailViewController *vc);

@interface ZLScorecardDataDetailViewController: ZLBaseViewController
@property(nonatomic, strong)ZLScorecardDataDetailViewControllerBlock ZLScorecardDataDetailViewControllerB;
@property(nonatomic, assign)BOOL ZLisBack;
@property(nonatomic, copy)NSString *ZLGameStatistics;//比赛统计
@end

NS_ASSUME_NONNULL_END
