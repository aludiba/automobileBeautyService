//
//  ABMapViewController.h
//  AroundTheDB
//
//  Created by 褚红彪 on 2019/8/18.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class ABMapViewController;
@class BMKLocation;
typedef void(^ABMapViewControllerBlock)(ABMapViewController *vc);

@interface ABMapViewController : ABBaseViewController
@property(nonatomic, copy)ABMapViewControllerBlock ABMapViewControllerB;
@property(nonatomic, strong)BMKLocation *locatio;
@end

NS_ASSUME_NONNULL_END
