//
//  BTLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "BTBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BTLoginViewController : BTBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (BTLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
