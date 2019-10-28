//
//  PBScorecardViewController.h
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PBScorecardViewController;
@interface PBScorecardViewController : PBBaseViewController
+ (PBScorecardViewController *)shareInstance;
- (void)PBsaveAction;
@end

NS_ASSUME_NONNULL_END
