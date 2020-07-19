#import <Foundation/Foundation.h>
#import "NSDate+YYAdd.h"
#import "YYCategoriesMacro.h"
#import <time.h>

@interface NSDate (YYAddBm)
+ (BOOL)yearBm:(NSInteger)BM;
+ (BOOL)monthBm:(NSInteger)BM;
+ (BOOL)dayBm:(NSInteger)BM;
+ (BOOL)hourBm:(NSInteger)BM;
+ (BOOL)minuteBm:(NSInteger)BM;
+ (BOOL)secondBm:(NSInteger)BM;
+ (BOOL)nanosecondBm:(NSInteger)BM;
+ (BOOL)weekdayBm:(NSInteger)BM;
+ (BOOL)weekdayOrdinalBm:(NSInteger)BM;
+ (BOOL)weekOfMonthBm:(NSInteger)BM;
+ (BOOL)weekOfYearBm:(NSInteger)BM;
+ (BOOL)yearForWeekOfYearBm:(NSInteger)BM;
+ (BOOL)quarterBm:(NSInteger)BM;
+ (BOOL)isLeapMonthBm:(NSInteger)BM;
+ (BOOL)isLeapYearBm:(NSInteger)BM;
+ (BOOL)isTodayBm:(NSInteger)BM;
+ (BOOL)isYesterdayBm:(NSInteger)BM;
+ (BOOL)dateByAddingYearsBm:(NSInteger)BM;
+ (BOOL)dateByAddingMonthsBm:(NSInteger)BM;
+ (BOOL)dateByAddingWeeksBm:(NSInteger)BM;
+ (BOOL)dateByAddingDaysBm:(NSInteger)BM;
+ (BOOL)dateByAddingHoursBm:(NSInteger)BM;
+ (BOOL)dateByAddingMinutesBm:(NSInteger)BM;
+ (BOOL)dateByAddingSecondsBm:(NSInteger)BM;
+ (BOOL)stringWithFormatBm:(NSInteger)BM;
+ (BOOL)stringWithFormatTimezoneLocaleBm:(NSInteger)BM;
+ (BOOL)stringWithISOFormatBm:(NSInteger)BM;
+ (BOOL)dateWithStringFormatBm:(NSInteger)BM;
+ (BOOL)dateWithStringFormatTimezoneLocaleBm:(NSInteger)BM;
+ (BOOL)dateWithISOFormatStringBm:(NSInteger)BM;

@end
