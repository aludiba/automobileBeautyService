#import "BMNSDateG+BmHb.h"
@implementation BMNSDateG (BmHb)
+ (BOOL)syearBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)tmonthBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)ydayBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)ChourBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)QminuteBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)GsecondBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)dnanosecondBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)PweekdayBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)AweekdayOrdinalBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)mweekOfMonthBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)XweekOfYearBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)syearForWeekOfYearBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)gquarterBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)MisLeapMonthBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)yisLeapYearBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)jisTodayBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)MisYesterdayBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)UDatebyaddingyearsBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)YDatebyaddingmonthsBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)uDatebyaddingweeksBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)vDatebyaddingdaysBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)VDatebyaddinghoursBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)fDatebyaddingminutesBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)wDatebyaddingsecondsBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)DStringwithformatBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)yStringwithformatTTimezoneFLocaleBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)CstringWithISOFormatBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)EDatewithstringLFormatBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)ODatewithstringNFormattTimezoneeLocaleBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)xDatewithisoformatstringBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
