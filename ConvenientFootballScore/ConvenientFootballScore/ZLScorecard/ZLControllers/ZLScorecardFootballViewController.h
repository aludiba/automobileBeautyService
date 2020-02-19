//
//  ZLScorecardFootballViewController.h
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/18.
//  Copyright © 2020 com. All rights reserved.
//

#import "ZLBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class ZLScorecardFootballViewController;
@interface ZLScorecardFootballViewController : ZLBaseViewController
+ (ZLScorecardFootballViewController *)shareInstance;
- (void)ZLsaveAction;
@end

NS_ASSUME_NONNULL_END
