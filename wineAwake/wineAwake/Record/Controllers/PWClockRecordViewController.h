//
//  PWClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PWDrinkingPlanSaveModel;

@interface PWClockRecordViewController : PWBaseViewController
@property(nonatomic, strong)NSDate *dateSelected;
@property(nonatomic, strong)PWDrinkingPlanSaveModel *saveModel;

@end

NS_ASSUME_NONNULL_END
