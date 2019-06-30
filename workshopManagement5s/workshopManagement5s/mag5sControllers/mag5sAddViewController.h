//
//  mag5sAddViewController.h
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class mag5sDataModel;
typedef NS_ENUM(NSInteger,mag5sAddViewControllerType) {
    mag5sAddViewControllerTypeAdd,
    mag5sAddViewControllerTypeDetail,
};
@interface mag5sAddViewController : mag5sBaseViewController
@property(nonatomic, assign)mag5sAddViewControllerType currentType;
@property(nonatomic, strong)mag5sDataModel *mag5sdatamodel;
@end

NS_ASSUME_NONNULL_END
