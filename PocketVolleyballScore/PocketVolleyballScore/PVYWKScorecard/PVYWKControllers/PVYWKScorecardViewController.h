//
//  PVYWKScorecardViewController.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PVYWKScorecardViewController;
@interface PVYWKScorecardViewController : PVYWKBaseViewController
+ (PVYWKScorecardViewController *)shareInstance;
- (void)PVYWKsaveAction;
@end

NS_ASSUME_NONNULL_END
