//
//  YBLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface YBLoginViewController : YBBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (YBLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
