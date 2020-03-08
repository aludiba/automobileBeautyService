//
//  ADLoginViewController.h
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ADBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ADLoginViewController : ADBaseViewController
@property(nonatomic, assign)NSUInteger type;
+ (ADLoginViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
