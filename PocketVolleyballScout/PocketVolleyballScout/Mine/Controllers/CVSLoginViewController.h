//
//  CVSLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CVSBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CVSLoginViewController : CVSBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (CVSLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
