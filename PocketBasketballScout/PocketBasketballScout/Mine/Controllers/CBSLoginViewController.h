//
//  CBSLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CBSBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CBSLoginViewController : CBSBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (CBSLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
