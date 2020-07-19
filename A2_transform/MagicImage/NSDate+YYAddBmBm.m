#import "NSDate+YYAddBmBm.h"
@implementation NSDate (YYAddBmBm)
+ (BOOL)yearBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)monthBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)dayBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)hourBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)minuteBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)secondBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)nanosecondBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)weekdayBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)weekdayOrdinalBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)weekOfMonthBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)weekOfYearBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)yearForWeekOfYearBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)quarterBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)isLeapMonthBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)isLeapYearBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)isTodayBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)isYesterdayBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)dateByAddingYearsBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)dateByAddingMonthsBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)dateByAddingWeeksBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)dateByAddingDaysBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)dateByAddingHoursBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)dateByAddingMinutesBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)dateByAddingSecondsBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)stringWithFormatBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)stringWithFormatTimezoneLocaleBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)stringWithISOFormatBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)dateWithStringFormatBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)dateWithStringFormatTimezoneLocaleBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)dateWithISOFormatStringBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
