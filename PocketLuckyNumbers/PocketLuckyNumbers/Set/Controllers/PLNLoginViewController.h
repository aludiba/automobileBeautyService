//
//  PLNLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PLNBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface PLNLoginViewController : PLNBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (PLNLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
