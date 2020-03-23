//
//  AJLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface AJLoginViewController : AJBaseViewController
@property(nonatomic, assign)NSUInteger AJtype;
+ (AJLoginViewController *)AJshareInstance;
@end

NS_ASSUME_NONNULL_END
