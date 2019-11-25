//
//  PWDrinkingPlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PWDrinkingPlanSaveModel;
@class PWClockViewController;
@interface PWDrinkingPlanViewController : PWBaseViewController
@property(nonatomic, weak)PWClockViewController *superVC;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)PWDrinkingPlanSaveModel *saveModel;
@end

NS_ASSUME_NONNULL_END
