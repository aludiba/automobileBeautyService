//
//  AFClockViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AFClockViewController;
@interface AFClockViewController : AFBaseViewController
@property (nonatomic, assign)NSUInteger AFselectIndex;
+ (AFClockViewController *)AFshareInstance;
- (void)AFloadData;
- (void)AFsaveAction;
@end

NS_ASSUME_NONNULL_END
