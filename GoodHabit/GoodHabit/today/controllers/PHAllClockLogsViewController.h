//
//  PHAllClockLogsViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PHGuideModel;
@interface PHAllClockLogsViewController : PHBaseViewController
@property(nonatomic, strong)NSMutableArray *data;
@property(nonatomic, strong)PHGuideModel *model;
@end

NS_ASSUME_NONNULL_END
