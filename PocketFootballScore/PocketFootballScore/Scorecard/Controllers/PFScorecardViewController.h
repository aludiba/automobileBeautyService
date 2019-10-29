//
//  PFScorecardViewController.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PFScorecardViewController;
@interface PFScorecardViewController : PFBaseViewController
+ (PFScorecardViewController *)shareInstance;
- (void)PFsaveAction;
@end

NS_ASSUME_NONNULL_END
