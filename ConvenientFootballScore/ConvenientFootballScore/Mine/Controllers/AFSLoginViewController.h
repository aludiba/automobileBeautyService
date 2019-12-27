//
//  AFSLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFSBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFSLoginViewController : AFSBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (AFSLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
