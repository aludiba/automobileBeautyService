//
//  YWKGAgamePlanViewController.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class YWKGAgamePlanSaveModel;
@class YWKGAClockViewController;
@interface YWKGAgamePlanViewController : YWKGABaseViewController
@property(nonatomic, weak)YWKGAClockViewController *superVC;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)YWKGAgamePlanSaveModel *saveModel;
@end

NS_ASSUME_NONNULL_END
