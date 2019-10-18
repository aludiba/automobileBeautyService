//
//  SOsodePlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class SOsodePlanSaveModel;
@class SOClockViewController;
@interface SOsodePlanViewController : SOBaseViewController
@property(nonatomic, weak)SOClockViewController *superVC;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)SOsodePlanSaveModel *saveModel;
@end

NS_ASSUME_NONNULL_END
