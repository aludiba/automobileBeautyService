//
//  GAgamePlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GAgamePlanSaveModel;
@class GAClockViewController;
@interface GAgamePlanViewController : GABaseViewController
@property(nonatomic, weak)GAClockViewController *superVC;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)GAgamePlanSaveModel *saveModel;
@end

NS_ASSUME_NONNULL_END
