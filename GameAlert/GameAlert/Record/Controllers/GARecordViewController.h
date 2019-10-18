//
//  GARecordViewController.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "GABaseViewController.h"
#import "JTCalendar.h"

NS_ASSUME_NONNULL_BEGIN

@interface GARecordViewController : GABaseViewController
@property (weak, nonatomic) IBOutlet JTCalendarMenuView *calendarMenuView;
@property (weak, nonatomic) IBOutlet JTHorizontalCalendarView *calendarContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *calendarContentViewHeight;

@end

NS_ASSUME_NONNULL_END
