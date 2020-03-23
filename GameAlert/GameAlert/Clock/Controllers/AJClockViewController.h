//
//  AJClockViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AJClockViewController;
@interface AJClockViewController : AJBaseViewController
@property (nonatomic, assign)NSUInteger AJselectIndex;
+ (AJClockViewController *)AJshareInstance;
- (void)AJloadData;
- (void)AJsaveAction;
@end

NS_ASSUME_NONNULL_END
