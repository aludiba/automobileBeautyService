//
//  GHDailyHabitsTableViewHeaderView.h
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GHDailyHabitsTableViewHeaderView;
typedef void(^selectSectionBlock)(GHDailyHabitsTableViewHeaderView *habitsHeaderView);
@interface GHDailyHabitsTableViewHeaderView : UITableViewHeaderFooterView
@property(nonatomic, assign)NSUInteger selectIndex;
@property(nonatomic, assign)NSUInteger periodCode;
@property(nonatomic, strong)NSArray *dataA;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)NSMutableArray *currentDataArray;
@property(nonatomic, strong)selectSectionBlock selectSectionB;
- (void)adjustColor;
@end

NS_ASSUME_NONNULL_END
