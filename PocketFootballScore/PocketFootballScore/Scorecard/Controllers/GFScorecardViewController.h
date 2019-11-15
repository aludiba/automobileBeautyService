//
//  GFScorecardViewController.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GFScorecardViewController;
@interface GFScorecardViewController : GFBaseViewController
+ (GFScorecardViewController *)shareInstance;
- (void)GFsaveAction;
@end

NS_ASSUME_NONNULL_END
