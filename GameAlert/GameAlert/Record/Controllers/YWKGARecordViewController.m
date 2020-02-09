//
//  YWKGARecordViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "YWKGARecordViewController.h"
#import "YWKGAgamePlanSaveModel.h"
#import "YWKGAClockRecordViewController.h"
@interface YWKGARecordViewController ()<JTCalendarDelegate>{
    NSMutableDictionary *_eventsByDate;
    NSDate *_todayDate;
    NSDate *_minDate;
    NSDate *_maxDate;
    NSDate *_dateSelected;
}
@property (strong, nonatomic)JTCalendarManager *YWKGAcalendarManager;
@property(nonatomic, strong)YWKGAgamePlanSaveModel *YWKGAsaveModel;
@property(nonatomic, copy)NSString *YWKGAobjectId;
@end

@implementation YWKGARecordViewController
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
    // Generate random events sort by date using a dateformatter for the demonstration
    [self loadData];
    [self createRandomEvents];
    [self createMinAndMaxDate];
}
- (void)createRandomEvents{
    _eventsByDate = [NSMutableDictionary new];
    for(int i = 0; i < 30; ++i){
        // Generate 30 random dates between now and 60 days later
        NSDate *randomDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
        // Use the date as key for eventsByDate
        NSString *key = [YWKGAUIUtilities YWKGAformattedTimeStringWithDate:randomDate format:@"yyyy/MM/dd"];
        if(!_eventsByDate[key]){
            _eventsByDate[key] = [NSMutableArray new];
        }
        [_eventsByDate[key] addObject:randomDate];
    }
}
- (void)createMinAndMaxDate{
    _todayDate = [NSDate date];
    // Min date will be 2 month before today
    _minDate = [self.YWKGAcalendarManager.dateHelper addToDate:_todayDate months:-2];
    // Max date will be 2 month after today
    _maxDate = [self.YWKGAcalendarManager.dateHelper addToDate:_todayDate months:2];
}
- (BOOL)haveEventForDay:(NSDate *)date{
    NSString *key = [YWKGAUIUtilities YWKGAformattedTimeStringWithDate:date format:@"yyyy/MM/dd"];
    if(_eventsByDate[key] && [(NSMutableArray *)_eventsByDate[key] count] > 0){
        return YES;
    }
    return NO;
}
- (void)loadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"YWKGAgamePlan"];
        AVUser *author = [AVUser currentUser];
        [bquery whereKey:@"author" equalTo:author];
        //查找GameScore表的数据
        __weak typeof(self) weakSelf = self;
        [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
            if (error) {
                
            }else{
                if (array.count) {
                    AVObject *obj = [array lastObject];
                    weakSelf.YWKGAobjectId = [obj objectId];
                 weakSelf.YWKGAsaveModel.YWKGAclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"YWKGAclockInSAndNumberB"]];
                    weakSelf.YWKGAsaveModel.YWKGAsaveDate = [obj objectForKey:@"saveDate"];
                    weakSelf.YWKGAsaveModel.YWKGAgameAges = [[obj objectForKey:@"YWKGAgameAges"] integerValue];
                    weakSelf.YWKGAsaveModel.YWKGAtimeGiveGameDate = [obj objectForKey:@"YWKGAtimeGiveGameDate"];
                    weakSelf.YWKGAsaveModel.YWKGAgameEveryDay = [[obj objectForKey:@"YWKGAgameEveryDay"] integerValue];
                    weakSelf.YWKGAsaveModel.YWKGAgameAges = [[obj objectForKey:@"YWKGAgameAges"] integerValue];
                weakSelf.YWKGAsaveModel.YWKGAgameLong = [[obj objectForKey:@"YWKGAgameLong"] integerValue];

                    weakSelf.YWKGAsaveModel.YWKGAcumulativeNubDays = [[obj objectForKey:@"YWKGAcumulativeNubDays"] integerValue];
                    weakSelf.YWKGAsaveModel.YWKGAaccumulativeGames = [[obj objectForKey:@"YWKGAaccumulativeGames"] integerValue];
                    weakSelf.YWKGAsaveModel.YWKGAcumulativeAmount = [[obj objectForKey:@"YWKGAcumulativeAmount"] integerValue];
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
    if([_YWKGAcalendarManager.dateHelper date:[NSDate date] isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor blueColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Selected date
    else if(_dateSelected && [_YWKGAcalendarManager.dateHelper date:_dateSelected isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor redColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Other month
    else if(![_YWKGAcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
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
        NSString *dateSelectedString = [YWKGAUIUtilities YWKGAformattedTimeStringWithDate:_dateSelected format:@"yyyy/MM/dd"];
        NSDictionary *contentDic;
        for (int i = 0; i < self.YWKGAsaveModel.YWKGAclockInSAndNumberB.count; i++) {
            NSDictionary *dic = self.YWKGAsaveModel.YWKGAclockInSAndNumberB[i];
            NSString *currentDateString = [dic objectForKey:@"clockInDate"];
            NSLog(@"currentDateString:%@",currentDateString);
            if ([dateSelectedString isEqualToString:currentDateString]) {
                contentDic = [dic copy];
                break;
            }
        }
//        [self loadData:_dateSelected];
        if (contentDic) {
        YWKGAClockRecordViewController *clockRecordVC = [[YWKGAClockRecordViewController alloc] init];
        clockRecordVC.dateSelected = _dateSelected;
            clockRecordVC.saveModel = self.YWKGAsaveModel;
        clockRecordVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:clockRecordVC animated:YES];
        }else{
            [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"这一天未打卡", nil)];
        }
    }
    // Animation for the circleView
    dayView.circleView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.1, 0.1);
    [UIView transitionWithView:dayView
                      duration:.3
                       options:0
                    animations:^{
        dayView.circleView.transform = CGAffineTransformIdentity;
                        [_YWKGAcalendarManager reload];
                    } completion:nil];
    
    
    // Don't change page in week mode because block the selection of days in first and last weeks of the month
    if(_YWKGAcalendarManager.settings.weekModeEnabled){
        return;
    }
    
    // Load the previous or next page if touch a day from another month
    
    if(![_YWKGAcalendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
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
    return [_YWKGAcalendarManager.dateHelper date:date isEqualOrAfter:_minDate andEqualOrBefore:_maxDate];
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
//- (JTCalendarMenuView *)calendarMenuView{
//    if (!_calendarMenuView) {
//        _calendarMenuView = [[JTCalendarMenuView alloc] init];
//        [self.view addSubview:_calendarMenuView];
//        [_calendarMenuView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
//            make.leading.equalTo(self.view);
//            make.trailing.equalTo(self.view);
//            make.height.mas_equalTo(20);
//        }];
//    }
//    return _calendarMenuView;
//}
//- (JTHorizontalCalendarView *)calendarContentView{
//    if (!_calendarContentView) {
//        _calendarContentView = [[JTHorizontalCalendarView alloc] init];
//        [self.view addSubview:_calendarContentView];
//        [_calendarContentView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(self.calendarMenuView.mas_bottom);
//            make.leading.equalTo(self.view);
//            make.trailing.equalTo(self.view);
//            make.height.mas_equalTo(300);
//        }];
//    }
//    return _calendarContentView;
//}
- (YWKGAgamePlanSaveModel *)YWKGAsaveModel{
    if (!_YWKGAsaveModel) {
        _YWKGAsaveModel = [[YWKGAgamePlanSaveModel alloc] init];
    }
    return _YWKGAsaveModel;
}
- (JTCalendarManager *)YWKGAcalendarManager{
    if (!_YWKGAcalendarManager) {
        _YWKGAcalendarManager = [[JTCalendarManager alloc] init];
        _YWKGAcalendarManager.delegate = self;
        [_YWKGAcalendarManager setMenuView:self.calendarMenuView];
        [_YWKGAcalendarManager setContentView:self.calendarContentView];
        [_YWKGAcalendarManager setDate:_todayDate];
    }
    return _YWKGAcalendarManager;
}
@end
