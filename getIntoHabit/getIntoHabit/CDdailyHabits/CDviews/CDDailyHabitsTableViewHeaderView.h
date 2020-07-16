//
//  CDDailyHabitsTableViewHeaderView.h
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CDDailyHabitsTableViewHeaderView;
typedef void(^selectSectionBlock)(CDDailyHabitsTableViewHeaderView *habitsHeaderView);
@interface CDDailyHabitsTableViewHeaderView : UITableViewHeaderFooterView
@property(nonatomic, assign)NSUInteger CDselectIndex;
@property(nonatomic, assign)NSUInteger CDperiodCode;
@property(nonatomic, strong)NSArray *dataA;
@property(nonatomic, strong)NSMutableArray *CDdataArray;
@property(nonatomic, strong)NSMutableArray *currentDataArray;
@property(nonatomic, strong)selectSectionBlock selectSectionB;
- (void)CDadjustColor;
@end

NS_ASSUME_NONNULL_END
