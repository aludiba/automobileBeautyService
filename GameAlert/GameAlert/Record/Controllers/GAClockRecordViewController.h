//
//  GAClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GAgamePlanSaveModel;

@interface GAClockRecordViewController : GABaseViewController
@property(nonatomic, strong)NSDate *dateSelected;
@property(nonatomic, strong)GAgamePlanSaveModel *saveModel;

@end

NS_ASSUME_NONNULL_END
