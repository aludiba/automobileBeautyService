//
//  CFLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CFLoginViewController : CFBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (CFLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
