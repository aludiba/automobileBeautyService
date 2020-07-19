#import <Foundation/Foundation.h>
#import "NSDate+YYAdd.h"
#import "YYCategoriesMacro.h"
#import <time.h>

@interface NSDate (YYAddHb)
+ (BOOL)yearHb:(NSInteger)hb;
+ (BOOL)monthHb:(NSInteger)hb;
+ (BOOL)dayHb:(NSInteger)hb;
+ (BOOL)hourHb:(NSInteger)hb;
+ (BOOL)minuteHb:(NSInteger)hb;
+ (BOOL)secondHb:(NSInteger)hb;
+ (BOOL)nanosecondHb:(NSInteger)hb;
+ (BOOL)weekdayHb:(NSInteger)hb;
+ (BOOL)weekdayOrdinalHb:(NSInteger)hb;
+ (BOOL)weekOfMonthHb:(NSInteger)hb;
+ (BOOL)weekOfYearHb:(NSInteger)hb;
+ (BOOL)yearForWeekOfYearHb:(NSInteger)hb;
+ (BOOL)quarterHb:(NSInteger)hb;
+ (BOOL)isLeapMonthHb:(NSInteger)hb;
+ (BOOL)isLeapYearHb:(NSInteger)hb;
+ (BOOL)isTodayHb:(NSInteger)hb;
+ (BOOL)isYesterdayHb:(NSInteger)hb;
+ (BOOL)dateByAddingYearsHb:(NSInteger)hb;
+ (BOOL)dateByAddingMonthsHb:(NSInteger)hb;
+ (BOOL)dateByAddingWeeksHb:(NSInteger)hb;
+ (BOOL)dateByAddingDaysHb:(NSInteger)hb;
+ (BOOL)dateByAddingHoursHb:(NSInteger)hb;
+ (BOOL)dateByAddingMinutesHb:(NSInteger)hb;
+ (BOOL)dateByAddingSecondsHb:(NSInteger)hb;
+ (BOOL)stringWithFormatHb:(NSInteger)hb;
+ (BOOL)stringWithFormatTimezoneLocaleHb:(NSInteger)hb;
+ (BOOL)stringWithISOFormatHb:(NSInteger)hb;
+ (BOOL)dateWithStringFormatHb:(NSInteger)hb;
+ (BOOL)dateWithStringFormatTimezoneLocaleHb:(NSInteger)hb;
+ (BOOL)dateWithISOFormatStringHb:(NSInteger)hb;

@end
