//
//  PVYWKRecordViewController.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "PVYWKBaseViewController.h"
#import "JTCalendar.h"

NS_ASSUME_NONNULL_BEGIN

@interface PVYWKRecordViewController : PVYWKBaseViewController
@property (weak, nonatomic) IBOutlet JTCalendarMenuView *calendarMenuView;
@property (weak, nonatomic) IBOutlet JTHorizontalCalendarView *calendarContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *calendarContentViewHeight;

@end

NS_ASSUME_NONNULL_END
