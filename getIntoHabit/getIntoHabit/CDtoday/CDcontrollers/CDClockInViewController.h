//
//  CDClockInViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class CDGuideModel;
@class CDTodayViewController;
@interface CDClockInViewController : CDBaseViewController
@property(nonatomic, weak)CDTodayViewController *CDsuperVC;
@property(nonatomic, strong)NSMutableArray *CDdataArray;
@property(nonatomic, strong)CDGuideModel *model;
@end

NS_ASSUME_NONNULL_END
