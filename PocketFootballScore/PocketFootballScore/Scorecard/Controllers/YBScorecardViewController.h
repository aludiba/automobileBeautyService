//
//  YBScorecardViewController.h
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class YBScorecardViewController;
@interface YBScorecardViewController : YBBaseViewController
+ (YBScorecardViewController *)shareInstance;
- (void)YBsaveAction;
@end

NS_ASSUME_NONNULL_END
