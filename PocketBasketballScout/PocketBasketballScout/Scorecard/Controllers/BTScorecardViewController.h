//
//  BTScorecardViewController.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "BTBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BTScorecardViewController : BTBaseViewController
+ (BTScorecardViewController *)shareInstance;
- (void)BTsaveAction;
@end

NS_ASSUME_NONNULL_END
