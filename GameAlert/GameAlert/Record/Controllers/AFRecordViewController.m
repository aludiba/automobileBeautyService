//
//  AFRecordViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//
#import "AFRecordViewController.h"
#import "AFLoginViewController.h"
#import "AFgamePlanSaveModel.h"
#import "AFClockRecordViewController.h"
@interface AFRecordViewController ()<JTCalendarDelegate>{
    NSMutableDictionary *_eventsByDate;
    NSDate *_todayDate;
    NSDate *_minDate;
    NSDate *_maxDate;
    NSDate *_dateSelected;
}
@property (strong, nonatomic)JTCalendarManager *AFcalendarManager;
@property(nonatomic, strong)AFgamePlanSaveModel *AFsaveModel;
@property(nonatomic, copy)NSString *AFobjectId;
@end

@implementation AFRecordViewController
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
    self.view.backgroundColor = AFH_Color(44, 77, 93, 1);
    self.calendarContentView.backgroundColor = AFH_Color(44, 77, 93, 1);
    self.calendarMenuView.backgroundColor = AFH_Color(44, 77, 93, 1);
    self.title = NSLocalizedString(@"日历", nil);
    [self AFloadData];
    [self AFcreateRandomEvents];
    [self AFcreateMinAndMaxDate];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)AFcreateRandomEvents{
    _eventsByDate = [NSMutableDictionary new];
    for(int i = 0; i < 30; ++i){
        // Generate 30 random dates between now and 60 days later
        NSDate *randomDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
        // Use the date as key for eventsByDate
        NSString *key = [AFUIUtilities AFformattedTimeStringWithDate:randomDate format:@"yyyy/MM/dd"];
        if(!_eventsByDate[key]){
            _eventsByDate[key] = [NSMutableArray new];
        }
        [_eventsByDate[key] addObject:randomDate];
    }
}
- (void)AFcreateMinAndMaxDate{
    _todayDate = [NSDate date];
    // Min date will be 2 month before today
    _minDate = [self.AFcalendarManager.dateHelper addToDate:_todayDate months:-2];
    // Max date will be 2 month after today
    _maxDate = [self.AFcalendarManager.dateHelper addToDate:_todayDate months:2];
}
- (BOOL)haveEventForDay:(NSDate *)date{
    NSString *key = [AFUIUtilities AFformattedTimeStringWithDate:date format:@"yyyy/MM/dd"];
    if(_eventsByDate[key] && [(NSMutableArray *)_eventsByDate[key] count] > 0){
        return YES;
    }
    return NO;
}
- (void)AFloadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"AFgamePlan"];
        AVUser *author = [AVUser currentUser];
    if (author) {
        [bquery whereKey:@"author" equalTo:author];
        //查找GameScore表的数据
        __weak typeof(self) weakSelf = self;
        [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            if (error) {
                
            }else{
                if (array.count) {
                    AVObject *obj = [array lastObject];
                    weakSelf.AFobjectId = [obj objectId];
                 weakSelf.AFsaveModel.AFclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"AFclockInSAndNumberB"]];
                    weakSelf.AFsaveModel.AFsaveDate = [obj objectForKey:@"saveDate"];
                    weakSelf.AFsaveModel.AFgameAges = [[obj objectForKey:@"AFgameAges"] integerValue];
                    weakSelf.AFsaveModel.AFtimeGiveGameDate = [obj objectForKey:@"AFtimeGiveGameDate"];
                    weakSelf.AFsaveModel.AFgameEveryDay = [[obj objectForKey:@"AFgameEveryDay"] integerValue];
                    weakSelf.AFsaveModel.AFgameAges = [[obj objectForKey:@"AFgameAges"] integerValue];
                weakSelf.AFsaveModel.AFgameLong = [[obj objectForKey:@"AFgameLong"] integerValue];

                    weakSelf.AFsaveModel.AFcumulativeNubDays = [[obj objectForKey:@"AFcumulativeNubDays"] integerValue];
                    weakSelf.AFsaveModel.AFaccumulativeGames = [[obj objectForKey:@"AFaccumulativeGames"] integerValue];
                    weakSelf.AFsaveModel.AFcumulativeAmount = [[obj objectForKey:@"AFcumulativeAmount"] integerValue];
                    }else{
                        
                    }
               }
        }];
    }else{
        [MBProgressHUD AFshowReminderText:@"Temporary no data"];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Please login first" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            AFLoginViewController *loginVC = [AFLoginViewController AFshareInstance];
            loginVC.AFtype = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AFKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - CalendarManager delegate
// Exemple of implementation of prepareDayView method
// Used to customize the appearance of dayView
- (void)calendar:(JTCalendarManager *)calendar prepareDayView:(JTCalendarDayView *)dayView{
    // Today
    if([_AFcalendarManager.dateHelper date:[NSDate date] isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor blueColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Selected date
    else if(_dateSelected && [_AFcalendarManager.dateHelper date:_dateSelected isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor redColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Other month
    else if(![_AFcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
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
        NSString *dateSelectedString = [AFUIUtilities AFformattedTimeStringWithDate:_dateSelected format:@"yyyy/MM/dd"];
        NSDictionary *contentDic;
        for (int i = 0; i < self.AFsaveModel.AFclockInSAndNumberB.count; i++) {
            NSDictionary *dic = self.AFsaveModel.AFclockInSAndNumberB[i];
            NSString *currentDateString = [dic objectForKey:@"clockInDate"];
            NSLog(@"currentDateString:%@",currentDateString);
            if ([dateSelectedString isEqualToString:currentDateString]) {
                contentDic = [dic copy];
                break;
            }
        }
//        [self loadData:_dateSelected];
        if (contentDic) {
        AFClockRecordViewController *clockRecordVC = [[AFClockRecordViewController alloc] init];
            clockRecordVC.AFdateSelected = _dateSelected;
            clockRecordVC.AFsaveModel = self.AFsaveModel;
        clockRecordVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:clockRecordVC animated:YES];
        }else{
            [MBProgressHUD AFshowReminderText:NSLocalizedString(@"这一天未打卡", nil)];
        }
    }
    // Animation for the circleView
    dayView.circleView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.1, 0.1);
    [UIView transitionWithView:dayView
                      duration:.3
                       options:0
                    animations:^{
        dayView.circleView.transform = CGAffineTransformIdentity;
                        [_AFcalendarManager reload];
                    } completion:nil];
    
    
    // Don't change page in week mode because block the selection of days in first and last weeks of the month
    if(_AFcalendarManager.settings.weekModeEnabled){
        return;
    }
    
    // Load the previous or next page if touch a day from another month
    
    if(![_AFcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
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
    return [_AFcalendarManager.dateHelper date:date isEqualOrAfter:_minDate andEqualOrBefore:_maxDate];
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
- (AFgamePlanSaveModel *)AFsaveModel{
    if (!_AFsaveModel) {
        _AFsaveModel = [[AFgamePlanSaveModel alloc] init];
    }
    return _AFsaveModel;
}
- (JTCalendarManager *)AFcalendarManager{
    if (!_AFcalendarManager) {
        _AFcalendarManager = [[JTCalendarManager alloc] init];
        _AFcalendarManager.delegate = self;
        [_AFcalendarManager setMenuView:self.calendarMenuView];
        [_AFcalendarManager setContentView:self.calendarContentView];
        [_AFcalendarManager setDate:_todayDate];
    }
    return _AFcalendarManager;
}
@end
