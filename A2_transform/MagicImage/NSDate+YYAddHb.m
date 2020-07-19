#import "NSDate+YYAddHb.h"
@implementation NSDate (YYAddHb)
+ (BOOL)yearHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)monthHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)dayHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)hourHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)minuteHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)secondHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)nanosecondHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)weekdayHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)weekdayOrdinalHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)weekOfMonthHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)weekOfYearHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)yearForWeekOfYearHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)quarterHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)isLeapMonthHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)isLeapYearHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)isTodayHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)isYesterdayHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)dateByAddingYearsHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)dateByAddingMonthsHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)dateByAddingWeeksHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)dateByAddingDaysHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)dateByAddingHoursHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)dateByAddingMinutesHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)dateByAddingSecondsHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)stringWithFormatHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)stringWithFormatTimezoneLocaleHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)stringWithISOFormatHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)dateWithStringFormatHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)dateWithStringFormatTimezoneLocaleHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)dateWithISOFormatStringHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
