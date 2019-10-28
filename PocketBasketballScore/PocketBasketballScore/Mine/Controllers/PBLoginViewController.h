//
//  PBLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface PBLoginViewController : PBBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (PBLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
