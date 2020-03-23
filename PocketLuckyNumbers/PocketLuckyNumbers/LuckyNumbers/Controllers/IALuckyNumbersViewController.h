//
//  IALuckyNumbersViewController.h
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "IABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface IALuckyNumbersViewController : IABaseViewController
+ (IALuckyNumbersViewController *)shareInstance;
- (void)IAsaveAction;
@end

NS_ASSUME_NONNULL_END
