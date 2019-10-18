//
//  SOClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class SOsodePlanSaveModel;

@interface SOClockRecordViewController : SOBaseViewController
@property(nonatomic, strong)NSDate *dateSelected;
@property(nonatomic, strong)SOsodePlanSaveModel *saveModel;

@end

NS_ASSUME_NONNULL_END
