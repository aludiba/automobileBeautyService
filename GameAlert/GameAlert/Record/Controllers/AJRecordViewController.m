//
//  AJRecordViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//
#import "AJRecordViewController.h"
#import "AJLoginViewController.h"
#import "AJgamePlanSaveModel.h"
#import "AJClockRecordViewController.h"
@interface AJRecordViewController ()<JTCalendarDelegate>{
    NSMutableDictionary *_eventsByDate;
    NSDate *_todayDate;
    NSDate *_minDate;
    NSDate *_maxDate;
    NSDate *_dateSelected;
}
@property (strong, nonatomic)JTCalendarManager *AJcalendarManager;
@property(nonatomic, strong)AJgamePlanSaveModel *AJsaveModel;
@property(nonatomic, copy)NSString *AJobjectId;
@end

@implementation AJRecordViewController
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
    self.view.backgroundColor = AJH_Color(44, 77, 93, 1);
    self.calendarContentView.backgroundColor = AJH_Color(44, 77, 93, 1);
    self.calendarMenuView.backgroundColor = AJH_Color(44, 77, 93, 1);
    self.title = NSLocalizedString(@"日历", nil);
    [self AJloadData];
    [self AJcreateRandomEvents];
    [self AJcreateMinAndMaxDate];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)AJcreateRandomEvents{
    _eventsByDate = [NSMutableDictionary new];
    for(int i = 0; i < 30; ++i){
        // Generate 30 random dates between now and 60 days later
        NSDate *randomDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
        // Use the date as key for eventsByDate
        NSString *key = [AJUIUtilities AJformattedTimeStringWithDate:randomDate format:@"yyyy/MM/dd"];
        if(!_eventsByDate[key]){
            _eventsByDate[key] = [NSMutableArray new];
        }
        [_eventsByDate[key] addObject:randomDate];
    }
}
- (void)AJcreateMinAndMaxDate{
    _todayDate = [NSDate date];
    // Min date will be 2 month before today
    _minDate = [self.AJcalendarManager.dateHelper addToDate:_todayDate months:-2];
    // Max date will be 2 month after today
    _maxDate = [self.AJcalendarManager.dateHelper addToDate:_todayDate months:2];
}
- (BOOL)haveEventForDay:(NSDate *)date{
    NSString *key = [AJUIUtilities AJformattedTimeStringWithDate:date format:@"yyyy/MM/dd"];
    if(_eventsByDate[key] && [(NSMutableArray *)_eventsByDate[key] count] > 0){
        return YES;
    }
    return NO;
}
- (void)AJloadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"AJgamePlan"];
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
                    weakSelf.AJobjectId = [obj objectId];
                 weakSelf.AJsaveModel.AJclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"AJclockInSAndNumberB"]];
                    weakSelf.AJsaveModel.AJsaveDate = [obj objectForKey:@"saveDate"];
                    weakSelf.AJsaveModel.AJgameAges = [[obj objectForKey:@"AJgameAges"] integerValue];
                    weakSelf.AJsaveModel.AJtimeGiveGameDate = [obj objectForKey:@"AJtimeGiveGameDate"];
                    weakSelf.AJsaveModel.AJgameEveryDay = [[obj objectForKey:@"AJgameEveryDay"] integerValue];
                    weakSelf.AJsaveModel.AJgameAges = [[obj objectForKey:@"AJgameAges"] integerValue];
                weakSelf.AJsaveModel.AJgameLong = [[obj objectForKey:@"AJgameLong"] integerValue];

                    weakSelf.AJsaveModel.AJcumulativeNubDays = [[obj objectForKey:@"AJcumulativeNubDays"] integerValue];
                    weakSelf.AJsaveModel.AJaccumulativeGames = [[obj objectForKey:@"AJaccumulativeGames"] integerValue];
                    weakSelf.AJsaveModel.AJcumulativeAmount = [[obj objectForKey:@"AJcumulativeAmount"] integerValue];
                    }else{
                        
                    }
               }
        }];
    }else{
        [MBProgressHUD AJshowReminderText:@"Temporary no data"];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Please login first" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            AJLoginViewController *loginVC = [AJLoginViewController AJshareInstance];
            loginVC.AJtype = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AJKeyWindow.rootViewController = loginVCNav;
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
    if([_AJcalendarManager.dateHelper date:[NSDate date] isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor blueColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Selected date
    else if(_dateSelected && [_AJcalendarManager.dateHelper date:_dateSelected isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor redColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Other month
    else if(![_AJcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
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
        NSString *dateSelectedString = [AJUIUtilities AJformattedTimeStringWithDate:_dateSelected format:@"yyyy/MM/dd"];
        NSDictionary *contentDic;
        for (int i = 0; i < self.AJsaveModel.AJclockInSAndNumberB.count; i++) {
            NSDictionary *dic = self.AJsaveModel.AJclockInSAndNumberB[i];
            NSString *currentDateString = [dic objectForKey:@"clockInDate"];
            NSLog(@"currentDateString:%@",currentDateString);
            if ([dateSelectedString isEqualToString:currentDateString]) {
                contentDic = [dic copy];
                break;
            }
        }
//        [self loadData:_dateSelected];
        if (contentDic) {
        AJClockRecordViewController *clockRecordVC = [[AJClockRecordViewController alloc] init];
            clockRecordVC.AJdateSelected = _dateSelected;
            clockRecordVC.AJsaveModel = self.AJsaveModel;
        clockRecordVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:clockRecordVC animated:YES];
        }else{
            [MBProgressHUD AJshowReminderText:NSLocalizedString(@"这一天未打卡", nil)];
        }
    }
    // Animation for the circleView
    dayView.circleView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.1, 0.1);
    [UIView transitionWithView:dayView
                      duration:.3
                       options:0
                    animations:^{
        dayView.circleView.transform = CGAffineTransformIdentity;
                        [_AJcalendarManager reload];
                    } completion:nil];
    
    
    // Don't change page in week mode because block the selection of days in first and last weeks of the month
    if(_AJcalendarManager.settings.weekModeEnabled){
        return;
    }
    
    // Load the previous or next page if touch a day from another month
    
    if(![_AJcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
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
    return [_AJcalendarManager.dateHelper date:date isEqualOrAfter:_minDate andEqualOrBefore:_maxDate];
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
- (AJgamePlanSaveModel *)AJsaveModel{
    if (!_AJsaveModel) {
        _AJsaveModel = [[AJgamePlanSaveModel alloc] init];
    }
    return _AJsaveModel;
}
- (JTCalendarManager *)AJcalendarManager{
    if (!_AJcalendarManager) {
        _AJcalendarManager = [[JTCalendarManager alloc] init];
        _AJcalendarManager.delegate = self;
        [_AJcalendarManager setMenuView:self.calendarMenuView];
        [_AJcalendarManager setContentView:self.calendarContentView];
        [_AJcalendarManager setDate:_todayDate];
    }
    return _AJcalendarManager;
}
@end
