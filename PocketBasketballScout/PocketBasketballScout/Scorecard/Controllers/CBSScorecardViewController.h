//
//  CBSScorecardViewController.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CBSBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CBSScorecardViewController : CBSBaseViewController
+ (CBSScorecardViewController *)shareInstance;
- (void)CBSsaveAction;
@end

NS_ASSUME_NONNULL_END
