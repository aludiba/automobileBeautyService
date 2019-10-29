//
//  PFLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface PFLoginViewController : PFBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (PFLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
