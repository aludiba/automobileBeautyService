//
//  AJgamePlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AJgamePlanSaveModel;
@class AJClockViewController;
@interface AJgamePlanViewController : AJBaseViewController
@property(nonatomic, weak)AJClockViewController *AJsuperVC;
@property(nonatomic, copy)NSString *AJobjectId;
@property(nonatomic, strong)AJgamePlanSaveModel *AJsaveModel;
@end

NS_ASSUME_NONNULL_END
