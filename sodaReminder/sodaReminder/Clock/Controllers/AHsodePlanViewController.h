//
//  AHsodePlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AHsodePlanSaveModel;
@class AHClockViewController;
@interface AHsodePlanViewController : AHBaseViewController
@property(nonatomic, weak)AHClockViewController *AHsuperVC;
@property(nonatomic, copy)NSString *AHobjectId;
@property(nonatomic, strong)AHsodePlanSaveModel *AHsaveModel;
@end

NS_ASSUME_NONNULL_END
