//
//  GHClockInViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GHGuideModel;
@class GHTodayViewController;
@interface GHClockInViewController : GHBaseViewController
@property(nonatomic, weak)GHTodayViewController *superVC;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)GHGuideModel *model;
@end

NS_ASSUME_NONNULL_END
