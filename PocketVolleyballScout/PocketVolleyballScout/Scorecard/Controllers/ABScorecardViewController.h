//
//  ABScorecardViewController.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ABScorecardViewController : ABBaseViewController
+ (ABScorecardViewController *)shareInstance;
- (void)ABsaveAction;
@end

NS_ASSUME_NONNULL_END
