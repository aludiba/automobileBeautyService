//
//  AFLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFLoginViewController : AFBaseViewController
@property(nonatomic, assign)NSUInteger AFtype;
+ (AFLoginViewController *)AFshareInstance;
@end

NS_ASSUME_NONNULL_END
