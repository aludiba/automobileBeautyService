//
//  GHDailyHabitsTableViewCell.h
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GHGuideModel;
@interface GHDailyHabitsTableViewCell : UITableViewCell
@property(nonatomic, strong)GHGuideModel *model;
@end

NS_ASSUME_NONNULL_END
