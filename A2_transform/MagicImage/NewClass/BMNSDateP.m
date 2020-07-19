#import "BMNSDateP.h"
@implementation BMNSDateP
+ (BOOL)Zyear:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)Smonth:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)qday:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)jhour:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)rminute:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)dsecond:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)Hnanosecond:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)Xweekday:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)yweekdayOrdinal:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)bweekOfMonth:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)uweekOfYear:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)vyearForWeekOfYear:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)dquarter:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)PisLeapMonth:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)cisLeapYear:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)WisToday:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)disYesterday:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)xDatebyaddingyears:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)DDatebyaddingmonths:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)jDatebyaddingweeks:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)QDatebyaddingdays:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)GDatebyaddinghours:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)kDatebyaddingminutes:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)kDatebyaddingseconds:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)zStringwithformat:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)KStringwithformatmTimezoneJLocale:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)KstringWithISOFormat:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)wDatewithstringyFormat:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)rDatewithstringeFormatCTimezoneALocale:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)uDatewithisoformatstring:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
