//
//  AHRecordViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "AHRecordViewController.h"
#import "AHsodePlanSaveModel.h"
#import "AHClockRecordViewController.h"
@interface AHRecordViewController ()<JTCalendarDelegate>{
    NSMutableDictionary *_eventsByDate;
    NSDate *_todayDate;
    NSDate *_minDate;
    NSDate *_maxDate;
    NSDate *_dateSelected;
}
@property (strong, nonatomic)JTCalendarManager *AHcalendarManager;
@property(nonatomic, strong)AHsodePlanSaveModel *AHsaveModel;
@property(nonatomic, copy)NSString *AHobjectId;
@end

@implementation AHRecordViewController
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
    self.title = NSLocalizedString(@"日历", nil);
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    [self AHloadData];
    [self AHcreateRandomEvents];
    [self AHcreateMinAndMaxDate];
}
- (void)AHcreateRandomEvents{
    _eventsByDate = [NSMutableDictionary new];
    for(int i = 0; i < 30; ++i){
        // Generate 30 random dates between now and 60 days later
        NSDate *randomDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
        // Use the date as key for eventsByDate
        NSString *key = [AHUIUtilities AHformattedTimeStringWithDate:randomDate format:@"yyyy-MM-dd"];
        if(!_eventsByDate[key]){
            _eventsByDate[key] = [NSMutableArray new];
        }
        [_eventsByDate[key] addObject:randomDate];
    }
}
- (void)AHcreateMinAndMaxDate{
    _todayDate = [NSDate date];
    // Min date will be 2 month before today
    _minDate = [self.AHcalendarManager.dateHelper addToDate:_todayDate months:-2];
    // Max date will be 2 month after today
    _maxDate = [self.AHcalendarManager.dateHelper addToDate:_todayDate months:2];
}
- (BOOL)haveEventForDay:(NSDate *)date{
    NSString *key = [AHUIUtilities AHformattedTimeStringWithDate:date format:@"yyyy-MM-dd"];
    if(_eventsByDate[key] && [(NSMutableArray *)_eventsByDate[key] count] > 0){
        return YES;
    }
    return NO;
}
- (void)AHloadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"AHsodePlan"];
        AVUser *author = [AVUser currentUser];
        [bquery whereKey:@"author" equalTo:author];
        //查找GameScore表的数据
        __weak typeof(self) weakSelf = self;
        [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            if (error) {
                
            }else{
                if (array.count) {
                    AVObject *obj = [array lastObject];
                    weakSelf.AHobjectId = [obj objectId];
                 weakSelf.AHsaveModel.AHclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"AHclockInSAndNumberB"]];
                    weakSelf.AHsaveModel.AHsaveDate = [obj objectForKey:@"saveDate"];
                    weakSelf.AHsaveModel.AHsodeAges = [[obj objectForKey:@"AHsodeAges"] integerValue];
                    weakSelf.AHsaveModel.AHtimeGiveSodeDate = [obj objectForKey:@"AHtimeGiveSodeDate"];
                    weakSelf.AHsaveModel.AHsodeEveryDay = [[obj objectForKey:@"AHsodeEveryDay"] integerValue];
                    weakSelf.AHsaveModel.AHsodePrices = [[obj objectForKey:@"AHsodePrices"] integerValue];
                
                    weakSelf.AHsaveModel.AHcumulativeNubDays = [[obj objectForKey:@"AHcumulativeNubDays"] integerValue];
                    weakSelf.AHsaveModel.AHaccumulativeBot = [[obj objectForKey:@"AHaccumulativeBot"] integerValue];
                    weakSelf.AHsaveModel.AHcumulativeAmount = [[obj objectForKey:@"AHcumulativeAmount"] integerValue];
                    }else{
                        
                    }
               }
        }];
}
#pragma mark - CalendarManager delegate
// Exemple of implementation of prepareDayView method
// Used to customize the appearance of dayView
- (void)calendar:(JTCalendarManager *)calendar prepareDayView:(JTCalendarDayView *)dayView{
    // Today
    if([_AHcalendarManager.dateHelper date:[NSDate date] isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor blueColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Selected date
    else if(_dateSelected && [_AHcalendarManager.dateHelper date:_dateSelected isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor redColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Other month
    else if(![_AHcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
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
        NSString *dateSelectedString = [AHUIUtilities AHformattedTimeStringWithDate:_dateSelected format:@"yyyy-MM-dd"];
        NSLog(@"dateSelectedString:%@",dateSelectedString);
        NSDictionary *contentDic;
        for (int i = 0; i < self.AHsaveModel.AHclockInSAndNumberB.count; i++) {
            NSDictionary *dic = self.AHsaveModel.AHclockInSAndNumberB[i];
            NSString *currentDateString = [dic objectForKey:@"clockInDate"];
            NSLog(@"currentDateString:%@",currentDateString);
            if ([dateSelectedString isEqualToString:currentDateString]) {
                contentDic = [dic copy];
                break;
            }
        }
//        [self loadData:_dateSelected];
        if (contentDic) {
        AHClockRecordViewController *clockRecordVC = [[AHClockRecordViewController alloc] init];
            clockRecordVC.AHdateSelected = _dateSelected;
            clockRecordVC.AHsaveModel = self.AHsaveModel;
        clockRecordVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:clockRecordVC animated:YES];
        }else{
            [MBProgressHUD AHshowReminderText:NSLocalizedString(@"这一天未打卡", nil)];
        }
    }
    // Animation for the circleView
    dayView.circleView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.1, 0.1);
    [UIView transitionWithView:dayView
                      duration:.3
                       options:0
                    animations:^{
                        dayView.circleView.transform = CGAffineTransformIdentity;
                        [_AHcalendarManager reload];
                    } completion:nil];
    
    
    // Don't change page in week mode because block the selection of days in first and last weeks of the month
    if(_AHcalendarManager.settings.weekModeEnabled){
        return;
    }
    
    // Load the previous or next page if touch a day from another month
    
    if(![_AHcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
        if([_calendarContentView.date compare:dayView.date] == NSOrderedAscending){
            [_calendarContentView loadNextPageWithAnimation];
        }
        else{
            [_calendarContentView loadPreviousPageWithAnimation];
        }
    }
    
}
#pragma mark - CalendarManager delegate - Page mangement
- (BOOL)calendar:(JTCalendarManager *)calendar canDisplayPageWithDate:(NSDate *)date{
    return [_AHcalendarManager.dateHelper date:date isEqualOrAfter:_minDate andEqualOrBefore:_maxDate];
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
- (AHsodePlanSaveModel *)AHsaveModel{
    if (!_AHsaveModel) {
        _AHsaveModel = [[AHsodePlanSaveModel alloc] init];
    }
    return _AHsaveModel;
}
- (JTCalendarManager *)AHcalendarManager{
    if (!_AHcalendarManager) {
        _AHcalendarManager = [[JTCalendarManager alloc] init];
        _AHcalendarManager.delegate = self;
        [_AHcalendarManager setMenuView:self.calendarMenuView];
        [_AHcalendarManager setContentView:self.calendarContentView];
        [_AHcalendarManager setDate:_todayDate];
    }
    return _AHcalendarManager;
}
@end
