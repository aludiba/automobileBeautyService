//
//  EAClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class EAsodePlanSaveModel;

@interface EAClockRecordViewController : EABaseViewController
@property(nonatomic, strong)NSDate *dateSelected;
@property(nonatomic, strong)EAsodePlanSaveModel *saveModel;

@end

NS_ASSUME_NONNULL_END
