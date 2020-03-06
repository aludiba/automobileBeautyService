//
//  CALoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CALoginViewController : CABaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (CALoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
