//
//  WBYBKOKLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WBYBKOKBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface WBYBKOKLoginViewController : WBYBKOKBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (WBYBKOKLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
