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
@end
