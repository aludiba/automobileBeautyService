#import "NSDate+YYAddHbHb.h"
@implementation NSDate (YYAddHbHb)
+ (BOOL)yearHbHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)monthHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)dayHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)hourHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)minuteHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)secondHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)nanosecondHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)weekdayHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)weekdayOrdinalHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)weekOfMonthHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)weekOfYearHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)yearForWeekOfYearHbHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)quarterHbHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)isLeapMonthHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)isLeapYearHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)isTodayHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)isYesterdayHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)dateByAddingYearsHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)dateByAddingMonthsHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)dateByAddingWeeksHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)dateByAddingDaysHbHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)dateByAddingHoursHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)dateByAddingMinutesHbHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)dateByAddingSecondsHbHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)stringWithFormatHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)stringWithFormatTimezoneLocaleHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)stringWithISOFormatHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)dateWithStringFormatHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)dateWithStringFormatTimezoneLocaleHbHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)dateWithISOFormatStringHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
