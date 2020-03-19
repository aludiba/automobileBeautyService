//
//  AFClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AFgamePlanSaveModel;

@interface AFClockRecordViewController : AFBaseViewController
@property(nonatomic, strong)NSDate *AFdateSelected;
@property(nonatomic, strong)AFgamePlanSaveModel *AFsaveModel;

@end

NS_ASSUME_NONNULL_END
