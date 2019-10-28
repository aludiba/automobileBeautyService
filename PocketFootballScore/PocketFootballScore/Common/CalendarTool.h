//
//  CalendarTool.h
//  Matrix_Employee
//
//  Created by bykj on 2018/12/17.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalendarTool : NSObject
//根据date获取日
+ (NSInteger)convertDateToDay:(NSDate *)date;
//根据date获取月
+ (NSInteger)convertDateToMonth:(NSDate *)date;
//根据date获取年
+ (NSInteger)convertDateToYear:(NSDate *)date;
//根据date获取当月周几 (美国时间周日-周六为 1-7,改为0-6方便计算)
+ (NSInteger)convertDateToWeekDay:(NSDate *)date;
//根据date获取当月周几
+ (NSInteger)convertDateToFirstWeekDay:(NSDate *)date;
//根据date获取当月总天数
+ (NSInteger)convertDateToTotalDays:(NSDate *)date;
//根据date获取偏移指定天数的date
+ (NSDate *)getDateFrom:(NSDate *)date offsetDays:(NSInteger)offsetDays;
//根据date获取偏移指定月数的date
+ (NSDate *)getDateFrom:(NSDate *)date offsetMonths:(NSInteger)offsetMonths;
//根据date获取偏移指定年数的date
+ (NSDate *)getDateFrom:(NSDate *)date offsetYears:(NSInteger)offsetYears;
//根据date获取当前周的日期
+ (NSArray *)getNowWeekDate:(NSDate *)date;
+ (long long)getDateTimeTOMilliSeconds:(NSDate *)datetime;
+ (NSArray *)getDatesWithStartDate:(NSString *)startDate endDate:(NSString *)endDate;//根据传入的两个时间算出中间的所有时间数组
@end
