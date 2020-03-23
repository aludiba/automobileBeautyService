//
//  AJClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AJgamePlanSaveModel;

@interface AJClockRecordViewController : AJBaseViewController
@property(nonatomic, strong)NSDate *AJdateSelected;
@property(nonatomic, strong)AJgamePlanSaveModel *AJsaveModel;

@end

NS_ASSUME_NONNULL_END
