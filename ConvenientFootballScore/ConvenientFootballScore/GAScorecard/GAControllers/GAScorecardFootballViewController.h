//
//  GAScorecardFootballViewController.h
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/18.
//  Copyright © 2020 com. All rights reserved.
//

#import "GABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GAScorecardFootballViewController;
@interface GAScorecardFootballViewController : GABaseViewController
+ (GAScorecardFootballViewController *)shareInstance;
- (void)GAsaveAction;
@end

NS_ASSUME_NONNULL_END
