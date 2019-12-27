//
//  PLNLuckyNumbersViewController.h
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "PLNBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface PLNLuckyNumbersViewController : PLNBaseViewController
+ (PLNLuckyNumbersViewController *)shareInstance;
- (void)PLNsaveAction;
@end

NS_ASSUME_NONNULL_END
