//
//  YBPBSLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBPBSBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface YBPBSLoginViewController : YBPBSBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (YBPBSLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
