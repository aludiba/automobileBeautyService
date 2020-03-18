//
//  EAsodePlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class EAsodePlanSaveModel;
@class EAClockViewController;
@interface EAsodePlanViewController : EABaseViewController
@property(nonatomic, weak)EAClockViewController *superVC;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)EAsodePlanSaveModel *saveModel;
@end

NS_ASSUME_NONNULL_END
