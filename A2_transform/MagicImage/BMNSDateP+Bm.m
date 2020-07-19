#import "BMNSDateP+Bm.h"
@implementation BMNSDateP (Bm)
+ (BOOL)ZyearBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)SmonthBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)qdayBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)jhourBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)rminuteBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)dsecondBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)HnanosecondBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)XweekdayBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)yweekdayOrdinalBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)bweekOfMonthBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)uweekOfYearBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)vyearForWeekOfYearBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)dquarterBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)PisLeapMonthBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)cisLeapYearBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)WisTodayBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)disYesterdayBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)xDatebyaddingyearsBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)DDatebyaddingmonthsBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)jDatebyaddingweeksBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)QDatebyaddingdaysBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)GDatebyaddinghoursBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)kDatebyaddingminutesBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)kDatebyaddingsecondsBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)zStringwithformatBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)KStringwithformatmTimezoneJLocaleBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)KstringWithISOFormatBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)wDatewithstringyFormatBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)rDatewithstringeFormatCTimezoneALocaleBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)uDatewithisoformatstringBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
