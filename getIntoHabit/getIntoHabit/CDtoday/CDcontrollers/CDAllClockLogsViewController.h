//
//  CDAllClockLogsViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class CDGuideModel;
@interface CDAllClockLogsViewController : CDBaseViewController
@property(nonatomic, strong)NSMutableArray *data;
@property(nonatomic, strong)CDGuideModel *model;
@end

NS_ASSUME_NONNULL_END
