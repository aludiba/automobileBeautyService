//
//  PVScorecardViewController.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PVScorecardViewController;
@interface PVScorecardViewController : PVBaseViewController
+ (PVScorecardViewController *)shareInstance;
- (void)PVsaveAction;
@end

NS_ASSUME_NONNULL_END
