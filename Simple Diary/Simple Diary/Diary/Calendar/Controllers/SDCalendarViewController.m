//
//  SDCalendarViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDCalendarViewController.h"
#import "SDCalendarDiaryViewController.h"
#import "SDTabBarController.h"
#import "SDDiaryViewController.h"
#import "SDWriteDiaryViewController.h"
#import "SDWriteDiaryModel.h"
@interface SDCalendarViewController ()<JTCalendarDelegate>{
    NSMutableDictionary *_eventsByDate;
    NSDate *_todayDate;
    NSDate *_minDate;
    NSDate *_maxDate;
    NSDate *_dateSelected;
}
@property (strong, nonatomic)JTCalendarManager *calendarManager;
@end

@implementation SDCalendarViewController
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
    [self createRandomEvents];
    // Create a min and max date for limit the calendar, optional
    [self createMinAndMaxDate];
}
- (void)createRandomEvents{
    _eventsByDate = [NSMutableDictionary new];
    for(int i = 0; i < 30; ++i){
        // Generate 30 random dates between now and 60 days later
        NSDate *randomDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
        // Use the date as key for eventsByDate
        NSString *key = [SDUIUtilities SDformattedTimeStringWithDate:randomDate format:@"yyyy-MM-dd"];
        if(!_eventsByDate[key]){
            _eventsByDate[key] = [NSMutableArray new];
        }
        [_eventsByDate[key] addObject:randomDate];
    }
}
- (void)createMinAndMaxDate{
    _todayDate = [NSDate date];
    // Min date will be 2 month before today
    _minDate = [self.calendarManager.dateHelper addToDate:_todayDate months:-2];
    // Max date will be 2 month after today
    _maxDate = [self.calendarManager.dateHelper addToDate:_todayDate months:2];
}
- (BOOL)haveEventForDay:(NSDate *)date{
    NSString *key = [SDUIUtilities SDformattedTimeStringWithDate:date format:@"yyyy-MM-dd"];
    if(_eventsByDate[key] && [(NSMutableArray *)_eventsByDate[key] count] > 0){
        return YES;
    }
    return NO;
}
- (void)loadData:(NSDate *)date{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"Diary"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD SDshowReminderText:[NSString stringWithFormat:@"%@",error]];
        }else{
            NSMutableArray *dateArray = [[NSMutableArray alloc] init];
            for (int i = (int)(array.count - 1); i > -1; i--) {
                BmobObject *obj = array[i];
                SDWriteDiaryModel *model = [[SDWriteDiaryModel alloc] init];
                model.objectId = [obj objectId];
                model.fontSize = [obj objectForKey:@"fontSize"];
                model.fontRGB = [obj objectForKey:@"fontRGB"];
                model.themeRGB = [obj objectForKey:@"themeRGB"];
                model.location = [obj objectForKey:@"location"];
                model.weather = [obj objectForKey:@"weather"];
                model.content = [obj objectForKey:@"content"];
                model.date = [[obj objectForKey:@"date"] copy];
                model.weekDay = [obj objectForKey:@"weekDay"];
                model.imageUrls = [obj objectForKey:@"imageUrls"];
                model.createdAt = [obj createdAt];
                model.updatedAt = [obj updatedAt];
                [dateArray addObject:model];
            }
            NSMutableArray *tempArray = [[NSMutableArray alloc] init];
            for (int i = 0; i < dateArray.count; i++) {
                SDWriteDiaryModel *model = dateArray[i];
                NSString *currentDateString = [[model.date componentsSeparatedByString:@" "] objectAtIndex:0];
                NSString *dateString = [SDUIUtilities SDformattedTimeStringWithDate:date format:@"yyyy-MM-dd"];
                if ([currentDateString isEqualToString:dateString]) {
                    [tempArray addObject:model];
                }
            }
            if (tempArray.count) {
                SDCalendarDiaryViewController *vc = [[SDCalendarDiaryViewController alloc] init];
                vc.date = date;
                [self.navigationController pushViewController:vc animated:YES];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提示", nil) message:NSLocalizedString(@"这天没有写日记哦，快去补写吧", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
                UIAlertAction *writeUpAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"补写", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    NSString *dateString = [SDUIUtilities SDformattedTimeStringWithDate:date format:@"yyyy-MM-dd HH:mm"];
                    [SDTabBarController shareInstance].SDDiaryVC.wdVC = [[SDWriteDiaryViewController alloc] init];
                    [SDTabBarController shareInstance].SDDiaryVC.wdVC.type = SDWriteDiaryViewControllerTypeDefault;
                    [SDTabBarController shareInstance].SDDiaryVC.wdVC.releaseModel.date  = dateString;
                    [self.navigationController pushViewController:[SDTabBarController shareInstance].SDDiaryVC.wdVC animated:YES];
                }];
                [alertVC addAction:cancelAction];
                [alertVC addAction:writeUpAction];
                [weakSelf presentViewController:alertVC animated:YES completion:nil];
            }
        }
    }];
}
#pragma mark - CalendarManager delegate
// Exemple of implementation of prepareDayView method
// Used to customize the appearance of dayView
- (void)calendar:(JTCalendarManager *)calendar prepareDayView:(JTCalendarDayView *)dayView{
    // Today
    if([_calendarManager.dateHelper date:[NSDate date] isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor blueColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Selected date
    else if(_dateSelected && [_calendarManager.dateHelper date:_dateSelected isTheSameDayThan:dayView.date]){
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor redColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Other month
    else if(![_calendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
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
        [self loadData:_dateSelected];
    }
    // Animation for the circleView
    dayView.circleView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.1, 0.1);
    [UIView transitionWithView:dayView
                      duration:.3
                       options:0
                    animations:^{
                        dayView.circleView.transform = CGAffineTransformIdentity;
                        [_calendarManager reload];
                    } completion:nil];
    
    
    // Don't change page in week mode because block the selection of days in first and last weeks of the month
    if(_calendarManager.settings.weekModeEnabled){
        return;
    }
    
    // Load the previous or next page if touch a day from another month
    
    if(![_calendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
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
    return [_calendarManager.dateHelper date:date isEqualOrAfter:_minDate andEqualOrBefore:_maxDate];
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
- (JTCalendarManager *)calendarManager{
    if (!_calendarManager) {
        _calendarManager = [[JTCalendarManager alloc] init];
        _calendarManager.delegate = self;
        [_calendarManager setMenuView:self.calendarMenuView];
        [_calendarManager setContentView:self.calendarContentView];
        [_calendarManager setDate:_todayDate];
    }
    return _calendarManager;
}
@end
