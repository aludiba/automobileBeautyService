//
//  IALoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "IABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface IALoginViewController : IABaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (IALoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
