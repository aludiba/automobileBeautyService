//
//  GALoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface GALoginViewController : GABaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (GALoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
