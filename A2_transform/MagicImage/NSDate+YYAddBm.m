#import "NSDate+YYAddBm.h"
@implementation NSDate (YYAddBm)
+ (BOOL)yearBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)monthBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)dayBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)hourBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)minuteBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)secondBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)nanosecondBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)weekdayBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)weekdayOrdinalBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)weekOfMonthBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)weekOfYearBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)yearForWeekOfYearBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)quarterBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)isLeapMonthBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)isLeapYearBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)isTodayBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)isYesterdayBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)dateByAddingYearsBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)dateByAddingMonthsBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)dateByAddingWeeksBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)dateByAddingDaysBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)dateByAddingHoursBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)dateByAddingMinutesBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)dateByAddingSecondsBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)stringWithFormatBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)stringWithFormatTimezoneLocaleBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)stringWithISOFormatBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)dateWithStringFormatBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)dateWithStringFormatTimezoneLocaleBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)dateWithISOFormatStringBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
