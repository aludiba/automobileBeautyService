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
@property(nonatomic, weak)EAClockViewController *EAsuperVC;
@property(nonatomic, copy)NSString *EAobjectId;
@property(nonatomic, strong)EAsodePlanSaveModel *EAsaveModel;
@end

NS_ASSUME_NONNULL_END
