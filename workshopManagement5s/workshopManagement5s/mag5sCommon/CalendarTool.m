//
//  CalendarTool.m
//  Matrix_Employee
//
//  Created by bykj on 2018/12/17.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import "CalendarTool.h"

@implementation CalendarTool
//根据date获取日
+ (NSInteger)convertDateToDay:(NSDate *)date {
    NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitDay) fromDate:date];
    return [components day];
}
//根据date获取月
+ (NSInteger)convertDateToMonth:(NSDate *)date {
    NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitMonth) fromDate:date];
    return [components month];
}
//根据date获取年
+ (NSInteger)convertDateToYear:(NSDate *)date {
    NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear) fromDate:date];
    return [components year];
}
//根据date获取当月周几 (美国时间周日-周六为 1-7,改为0-6方便计算)
+ (NSInteger)convertDateToWeekDay:(NSDate *)date {
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond|NSCalendarUnitWeekday fromDate:date];
    NSInteger weekDay = [components weekday] - 1;
    weekDay = MAX(weekDay, 0);
    return weekDay;
}
//根据date获取当月周几
+ (NSInteger)convertDateToFirstWeekDay:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    [calendar setFirstWeekday:1];//1.Sun. 2.Mon. 3.Thes. 4.Wed. 5.Thur. 6.Fri. 7.Sat.
    NSDateComponents *comp = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:date];
    [comp setDay:1];
    NSDate *firstDayOfMonthDate = [calendar dateFromComponents:comp];
    NSUInteger firstWeekday = [calendar ordinalityOfUnit:NSCalendarUnitWeekday inUnit:NSCalendarUnitWeekOfMonth forDate:firstDayOfMonthDate];
    return firstWeekday - 1;  //美国时间周日为星期的第一天，所以周日-周六为1-7，改为0-6方便计算
}
//根据date获取当月总天数
+ (NSInteger)convertDateToTotalDays:(NSDate *)date {
    NSRange daysInOfMonth = [[NSCalendar currentCalendar] rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:date];
    return daysInOfMonth.length;
}
//根据date获取偏移指定天数的date
+ (NSDate *)getDateFrom:(NSDate *)date offsetDays:(NSInteger)offsetDays {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *lastMonthComps = [[NSDateComponents alloc] init];
    [lastMonthComps setDay:offsetDays];  //year = 1表示1年后的时间 year = -1为1年前的日期，month day 类推
    NSDate *newdate = [calendar dateByAddingComponents:lastMonthComps toDate:date options:0];
    return newdate;
}
//根据date获取偏移指定月数的date
+ (NSDate *)getDateFrom:(NSDate *)date offsetMonths:(NSInteger)offsetMonths {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM"];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *lastMonthComps = [[NSDateComponents alloc] init];
    [lastMonthComps setMonth:offsetMonths];  //year = 1表示1年后的时间 year = -1为1年前的日期，month day 类推
    NSDate *newdate = [calendar dateByAddingComponents:lastMonthComps toDate:date options:0];
    return newdate;
}
//根据date获取偏移指定年数的date
+ (NSDate *)getDateFrom:(NSDate *)date offsetYears:(NSInteger)offsetYears {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy"];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *lastMonthComps = [[NSDateComponents alloc] init];
    [lastMonthComps setYear:offsetYears];  //year = 1表示1年后的时间 year = -1为1年前的日期，month day 类推
    NSDate *newdate = [calendar dateByAddingComponents:lastMonthComps toDate:date options:0];
    return newdate;
}
//根据date获取当前周的日期
+ (NSArray *)getNowWeekDate:(NSDate *)date{
    NSDateFormatter *formatter0 = [[NSDateFormatter alloc] init];
    [formatter0 setDateFormat:@"yyyy-MM-dd"];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *comp = [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekdayCalendarUnit | NSDayCalendarUnit fromDate:date];
    NSInteger weekDay = [comp weekday];
    NSInteger day = [comp day];
    NSInteger firstDiff;
    if (weekDay == 1) {
         firstDiff = -6;
    }else{
         firstDiff = [calendar firstWeekday] - weekDay + 1;
     }
     NSDateComponents *firstDayComp = [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit  fromDate:date];
    [firstDayComp setDay:day + firstDiff];
    NSDate *firstDayOfWeek = [calendar dateFromComponents:firstDayComp];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd"];
    NSString *firstDay = [formatter stringFromDate:firstDayOfWeek];
    int firstValue = firstDay.intValue;
    NSMutableArray *dateArr = [[NSMutableArray alloc] init];
    for (int j = 0; j < 7; j++){
          NSInteger obj;
          obj = firstDiff + j;
          NSString *str = [formatter0 stringFromDate:[self getDateFrom:date offsetDays:obj]];
          [dateArr addObject:str];
     }
    NSLog(@"一周内时间数组dateArr:%@",dateArr);
    return dateArr;
}
//将NSDate类型的时间转换为时间戳,从1970/1/1开始
+ (long long)getDateTimeTOMilliSeconds:(NSDate *)datetime{
    NSTimeInterval interval = [datetime timeIntervalSince1970];
    NSLog(@"转换的时间戳=%f",interval);
//    NSTimeInterval interval = [datetime timeIntervalSinceReferenceDate];
    long long totalMilliseconds = interval * 1000;
 NSLog(@"totalMilliseconds=%llu",totalMilliseconds);
    return totalMilliseconds;
}
//根据传入的两个时间算出中间的所有时间数组
+ (NSArray*)getDatesWithStartDate:(NSString *)startDate endDate:(NSString *)endDate{
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
    
    //字符串转时间
    NSDateFormatter *matter = [[NSDateFormatter alloc] init];
    matter.dateFormat = @"yyyy-MM-dd";
    NSDate *start = [matter dateFromString:startDate];
    NSDate *end = [matter dateFromString:endDate];
    
    NSMutableArray *componentAarray = [NSMutableArray array];
    NSComparisonResult result = [start compare:end];
    NSDateComponents *comps;
    while (result != NSOrderedDescending) {
        comps = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay |  NSCalendarUnitWeekday fromDate:start];
        [componentAarray addObject:start];
        
        //后一天
        [comps setDay:([comps day]+1)];
        start = [calendar dateFromComponents:comps];
        
        //对比日期大小
        result = [start compare:end];
    }
    NSMutableArray *dateArray = [[NSMutableArray alloc] init];
    int count = (int)componentAarray.count;
    for (int i = 0; i < count; i++) {
        NSDate *date = componentAarray[i];
        [dateArray addObject:date];
    }
//    if (![endDate isEqualToString:startDate]) {
//        [dateArray addObject:end];
//    }
    return [dateArray copy];
}
@end
