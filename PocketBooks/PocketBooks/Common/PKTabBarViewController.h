//
//  PKTPKBarViewController.h
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PKTabBarViewController;
//@class PKHistoryViewController;
//@class PKMeasurementViewController;
//@class PKSetViewController;
@interface PKTabBarViewController : UITabBarController
+ (PKTabBarViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
