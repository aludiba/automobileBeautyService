//
//  GFLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface GFLoginViewController : GFBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (GFLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
