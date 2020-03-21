//
//  AHClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AHsodePlanSaveModel;

@interface AHClockRecordViewController : AHBaseViewController
@property(nonatomic, strong)NSDate *AHdateSelected;
@property(nonatomic, strong)AHsodePlanSaveModel *AHsaveModel;

@end

NS_ASSUME_NONNULL_END
