//
//  GHAllClockLogsViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GHGuideModel;
@interface GHAllClockLogsViewController : GHBaseViewController
@property(nonatomic, strong)NSMutableArray *data;
@property(nonatomic, strong)GHGuideModel *model;
@end

NS_ASSUME_NONNULL_END
