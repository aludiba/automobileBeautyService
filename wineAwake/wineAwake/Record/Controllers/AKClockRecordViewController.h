//
//  AKClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AKDrinkingPlanSaveModel;

@interface AKClockRecordViewController : AKBaseViewController
@property(nonatomic, strong)NSDate *dateSelected;
@property(nonatomic, strong)AKDrinkingPlanSaveModel *saveModel;

@end

NS_ASSUME_NONNULL_END
