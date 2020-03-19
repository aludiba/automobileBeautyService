//
//  AFgamePlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AFgamePlanSaveModel;
@class AFClockViewController;
@interface AFgamePlanViewController : AFBaseViewController
@property(nonatomic, weak)AFClockViewController *AFsuperVC;
@property(nonatomic, copy)NSString *AFobjectId;
@property(nonatomic, strong)AFgamePlanSaveModel *AFsaveModel;
@end

NS_ASSUME_NONNULL_END
