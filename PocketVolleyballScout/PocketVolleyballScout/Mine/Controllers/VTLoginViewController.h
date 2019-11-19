//
//  VTLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "VTBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface VTLoginViewController : VTBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (VTLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
