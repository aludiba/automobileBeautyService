//
//  YWKGAClockRecordViewController.h
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class YWKGAgamePlanSaveModel;

@interface YWKGAClockRecordViewController : YWKGABaseViewController
@property(nonatomic, strong)NSDate *dateSelected;
@property(nonatomic, strong)YWKGAgamePlanSaveModel *saveModel;

@end

NS_ASSUME_NONNULL_END
