//
//  autoBeuAddViewController.h
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "autoBeuBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class autoBeuDataModel;
typedef NS_ENUM(NSInteger,autoBeuAddViewControllerType) {
    autoBeuAddViewControllerTypeAdd,
    autoBeuAddViewControllerTypeDetail,
    autoBeuAddViewControllerTypeEditAgain,
};
@interface autoBeuAddViewController : autoBeuBaseViewController
@property(nonatomic, assign)autoBeuAddViewControllerType currentType;
@property(nonatomic, strong)autoBeuDataModel *model;
@end

NS_ASSUME_NONNULL_END
