//
//  PFRecordViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "PFRecordViewController.h"
#import "PFScorecardModel.h"
#import "PFRecordDetailsViewController.h"
@interface PFRecordViewController ()<JTCalendarDelegate>{
    NSMutableDictionary *_eventsByDate;
    NSDate *_todayDate;
    NSDate *_minDate;
    NSDate *_maxDate;
    NSDate *_dateSelected;
}
@property (strong, nonatomic)JTCalendarManager *PFcalendarManager;
@property(nonatomic, copy)NSString *PFobjectId;
@end

@implementation PFRecordViewController
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(!self){
        return nil;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"记录", nil);
    // Generate random events sort by date using a dateformatter for the demonstration
    [self createRandomEvents];
    [self createMinAndMaxDate];
}
- (void)createRandomEvents{
    _eventsByDate = [NSMutableDictionary new];
    for(int i = 0; i < 30; ++i){
        // Generate 30 random dates between now and 60 days later
        NSDate *randomDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
        // Use the date as key for eventsByDate
        NSString *key = [PFUIUtilities PFformattedTimeStringWithDate:randomDate format:@"yyyy/MM/dd"];
        if(!_eventsByDate[key]){
            _eventsByDate[key] = [NSMutableArray new];
        }
        [_eventsByDate[key] addObject:randomDate];
    }
}
- (void)createMinAndMaxDate{
    _todayDate = [NSDate date];
    // Min date will be 2 month before today
    _minDate = [self.PFcalendarManager.dateHelper addToDate:_todayDate months:-2];
    // Max date will be 2 month after today
    _maxDate = [self.PFcalendarManager.dateHelper addToDate:_todayDate months:2];
}
- (BOOL)haveEventForDay:(NSDate *)date{
    NSString *key = [PFUIUtilities PFformattedTimeStringWithDate:date format:@"yyyy/MM/dd"];
    if(_eventsByDate[key] && [(NSMutableArray *)_eventsByDate[key] count] > 0){
        return YES;
    }
    return NO;
}
#pragma mark - CalendarManager delegate
// Exemple of implementation of prepareDayView method
// Used to customize the appearance of dayView
- (void)calendar:(JTCalendarManager *)calendar prepareDayView:(JTCalendarDayView *)dayView{
    // Today
    if([_PFcalendarManager.dateHelper date:[NSDate date] isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor blueColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Selected date
    else if(_dateSelected && [_PFcalendarManager.dateHelper date:_dateSelected isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor redColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Other month
    else if(![_PFcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
        dayView.circleView.hidden = YES;
        dayView.dotView.backgroundColor = [UIColor redColor];
        dayView.textLabel.textColor = [UIColor lightGrayColor];
    }
    // Another day of the current month
    else{
        dayView.circleView.hidden = YES;
        dayView.dotView.backgroundColor = [UIColor redColor];
        dayView.textLabel.textColor = [UIColor blackColor];
    }
    
    if([self haveEventForDay:dayView.date]){
        dayView.dotView.hidden = NO;
    }
    else{
        dayView.dotView.hidden = YES;
    }
}
- (void)calendar:(JTCalendarManager *)calendar didTouchDayView:(JTCalendarDayView *)dayView{
    _dateSelected = dayView.date;
    NSDate *nowDate = [[NSDate alloc] init];
    if ([_dateSelected compare:nowDate] != NSOrderedDescending) {
    PFRecordDetailsViewController *detailVC = [[PFRecordDetailsViewController alloc] init];
    detailVC.dateSelected = _dateSelected;
    detailVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:detailVC animated:YES];
    // Animation for the circleView
    dayView.circleView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.1, 0.1);
    [UIView transitionWithView:dayView
                      duration:.3
                       options:0
                    animations:^{
        dayView.circleView.transform = CGAffineTransformIdentity;
        [_PFcalendarManager reload];
    } completion:nil];
    // Don't change page in week mode because block the selection of days in first and last weeks of the month
    if(_PFcalendarManager.settings.weekModeEnabled){
        return;
    }
    
    // Load the previous or next page if touch a day from another month
    
    if(![_PFcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
        if([_calendarContentView.date compare:dayView.date] == NSOrderedAscending){
            [_calendarContentView loadNextPageWithAnimation];
        }
        else{
            [_calendarContentView loadPreviousPageWithAnimation];
        }
    }
    }
}
#pragma mark - CalendarManager delegate - Page mangement
- (BOOL)calendar:(JTCalendarManager *)calendar canDisplayPageWithDate:(NSDate *)date{
    return [_PFcalendarManager.dateHelper date:date isEqualOrAfter:_minDate andEqualOrBefore:_maxDate];
}
- (void)calendarDidLoadNextPage:(JTCalendarManager *)calendar
{
    //    NSLog(@"Next page loaded");
}

- (void)calendarDidLoadPreviousPage:(JTCalendarManager *)calendar
{
    //    NSLog(@"Previous page loaded");
}
#pragma mark - 属性懒加载
- (JTCalendarManager *)PFcalendarManager{
    if (!_PFcalendarManager) {
        _PFcalendarManager = [[JTCalendarManager alloc] init];
        _PFcalendarManager.delegate = self;
        [_PFcalendarManager setMenuView:self.calendarMenuView];
        [_PFcalendarManager setContentView:self.calendarContentView];
        [_PFcalendarManager setDate:_todayDate];
    }
    return _PFcalendarManager;
}
@end
