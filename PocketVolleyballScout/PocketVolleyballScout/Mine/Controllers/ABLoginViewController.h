//
//  ABLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ABBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ABLoginViewController : ABBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (ABLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
