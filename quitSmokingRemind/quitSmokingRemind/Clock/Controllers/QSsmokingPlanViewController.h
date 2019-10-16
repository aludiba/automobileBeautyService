//
//  QSsmokingPlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class QSsmokingPlanSaveModel;
@class QSClockViewController;
@interface QSsmokingPlanViewController : QSBaseViewController
@property(nonatomic, weak)QSClockViewController *superVC;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)QSsmokingPlanSaveModel *saveModel;
@end

NS_ASSUME_NONNULL_END
