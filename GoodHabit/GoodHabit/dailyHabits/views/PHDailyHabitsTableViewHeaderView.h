//
//  PHDailyHabitsTableViewHeaderView.h
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PHDailyHabitsTableViewHeaderView;
typedef void(^selectSectionBlock)(PHDailyHabitsTableViewHeaderView *habitsHeaderView);
@interface PHDailyHabitsTableViewHeaderView : UITableViewHeaderFooterView
@property(nonatomic, assign)NSUInteger PHselectIndex;
@property(nonatomic, assign)NSUInteger PHperiodCode;
@property(nonatomic, strong)NSArray *dataA;
@property(nonatomic, strong)NSMutableArray *PHdataArray;
@property(nonatomic, strong)NSMutableArray *currentDataArray;
@property(nonatomic, strong)selectSectionBlock selectSectionB;
- (void)PHadjustColor;
@end

NS_ASSUME_NONNULL_END
