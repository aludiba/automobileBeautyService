//
//  QSClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class QSsmokingPlanSaveModel;

@interface QSClockRecordViewController : QSBaseViewController
@property(nonatomic, strong)NSDate *dateSelected;
@property(nonatomic, strong)QSsmokingPlanSaveModel *saveModel;

@end

NS_ASSUME_NONNULL_END
