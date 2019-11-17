//
//  AKDrinkingPlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AKDrinkingPlanSaveModel;
@class AKClockViewController;
@interface AKDrinkingPlanViewController : AKBaseViewController
@property(nonatomic, weak)AKClockViewController *superVC;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)AKDrinkingPlanSaveModel *saveModel;
@end

NS_ASSUME_NONNULL_END
