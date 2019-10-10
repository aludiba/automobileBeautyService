//
//  WAClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class WADrinkingPlanSaveModel;

@interface WAClockRecordViewController : WABaseViewController
@property(nonatomic, strong)NSDate *dateSelected;
@property(nonatomic, strong)WADrinkingPlanSaveModel *saveModel;

@end

NS_ASSUME_NONNULL_END
