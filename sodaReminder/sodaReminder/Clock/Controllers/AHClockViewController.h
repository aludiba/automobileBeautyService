//
//  AHClockViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface AHClockViewController : AHBaseViewController
+ (AHClockViewController *)shareInstance;
- (void)AHloadData;
@end

NS_ASSUME_NONNULL_END
