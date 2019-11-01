//
//  PHClockInViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PHGuideModel;
@class PHTodayViewController;
@interface PHClockInViewController : PHBaseViewController
@property(nonatomic, weak)PHTodayViewController *PHsuperVC;
@property(nonatomic, strong)NSMutableArray *PHdataArray;
@property(nonatomic, strong)PHGuideModel *model;
@end

NS_ASSUME_NONNULL_END
