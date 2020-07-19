#import <Foundation/Foundation.h>
@interface hbNSDatel: NSObject
+ (BOOL)iyear:(NSInteger)hb;
+ (BOOL)cmonth:(NSInteger)hb;
+ (BOOL)Oday:(NSInteger)hb;
+ (BOOL)Bhour:(NSInteger)hb;
+ (BOOL)zminute:(NSInteger)hb;
+ (BOOL)Rsecond:(NSInteger)hb;
+ (BOOL)Unanosecond:(NSInteger)hb;
+ (BOOL)Aweekday:(NSInteger)hb;
+ (BOOL)sweekdayOrdinal:(NSInteger)hb;
+ (BOOL)oweekOfMonth:(NSInteger)hb;
+ (BOOL)eweekOfYear:(NSInteger)hb;
+ (BOOL)SyearForWeekOfYear:(NSInteger)hb;
+ (BOOL)pquarter:(NSInteger)hb;
+ (BOOL)AisLeapMonth:(NSInteger)hb;
+ (BOOL)yisLeapYear:(NSInteger)hb;
+ (BOOL)qisToday:(NSInteger)hb;
+ (BOOL)zisYesterday:(NSInteger)hb;
+ (BOOL)YDatebyaddingyears:(NSInteger)hb;
+ (BOOL)CDatebyaddingmonths:(NSInteger)hb;
+ (BOOL)ADatebyaddingweeks:(NSInteger)hb;
+ (BOOL)rDatebyaddingdays:(NSInteger)hb;
+ (BOOL)lDatebyaddinghours:(NSInteger)hb;
+ (BOOL)CDatebyaddingminutes:(NSInteger)hb;
+ (BOOL)DDatebyaddingseconds:(NSInteger)hb;
+ (BOOL)BStringwithformat:(NSInteger)hb;
+ (BOOL)NStringwithformatgTimezoneZLocale:(NSInteger)hb;
+ (BOOL)TstringWithISOFormat:(NSInteger)hb;
+ (BOOL)cDatewithstringpFormat:(NSInteger)hb;
+ (BOOL)NDatewithstringUFormatKTimezoneaLocale:(NSInteger)hb;
+ (BOOL)WDatewithisoformatstring:(NSInteger)hb;

@end
