//
//  WADrinkingPlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class WADrinkingPlanSaveModel;
@class WAClockViewController;
@interface WADrinkingPlanViewController : WABaseViewController
@property(nonatomic, weak)WAClockViewController *superVC;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)WADrinkingPlanSaveModel *saveModel;
@end

NS_ASSUME_NONNULL_END
