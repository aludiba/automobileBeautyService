//
//  PHDailyHabitsTableViewCell.h
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PHGuideModel;
@interface PHDailyHabitsTableViewCell : UITableViewCell
@property(nonatomic, strong)PHGuideModel *model;
@end

NS_ASSUME_NONNULL_END
