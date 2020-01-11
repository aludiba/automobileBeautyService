//
//  CVSScorecardViewController.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CVSScorecardViewController : CVSBaseViewController
+ (CVSScorecardViewController *)shareInstance;
- (void)CVSsaveAction;
@end

NS_ASSUME_NONNULL_END
