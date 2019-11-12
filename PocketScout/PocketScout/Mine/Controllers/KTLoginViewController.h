//
//  KTLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "KTBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface KTLoginViewController : KTBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (KTLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
