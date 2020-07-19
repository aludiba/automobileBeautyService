#import "BMNSDateG+Bm.h"
@implementation BMNSDateG (Bm)
+ (BOOL)syearBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)tmonthBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)ydayBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)ChourBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)QminuteBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)GsecondBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)dnanosecondBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)PweekdayBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)AweekdayOrdinalBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)mweekOfMonthBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)XweekOfYearBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)syearForWeekOfYearBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)gquarterBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)MisLeapMonthBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)yisLeapYearBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)jisTodayBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)MisYesterdayBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)UDatebyaddingyearsBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)YDatebyaddingmonthsBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)uDatebyaddingweeksBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)vDatebyaddingdaysBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)VDatebyaddinghoursBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)fDatebyaddingminutesBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)wDatebyaddingsecondsBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)DStringwithformatBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)yStringwithformatTTimezoneFLocaleBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)CstringWithISOFormatBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)EDatewithstringLFormatBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)ODatewithstringNFormattTimezoneeLocaleBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)xDatewithisoformatstringBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
