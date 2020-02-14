//
//  PVYWKLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface PVYWKLoginViewController : PVYWKBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (PVYWKLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
