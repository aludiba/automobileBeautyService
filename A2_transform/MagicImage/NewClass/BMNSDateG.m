#import "BMNSDateG.h"
@implementation BMNSDateG
+ (BOOL)syear:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)tmonth:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)yday:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)Chour:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)Qminute:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)Gsecond:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)dnanosecond:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)Pweekday:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)AweekdayOrdinal:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)mweekOfMonth:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)XweekOfYear:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)syearForWeekOfYear:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)gquarter:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)MisLeapMonth:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)yisLeapYear:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)jisToday:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)MisYesterday:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)UDatebyaddingyears:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)YDatebyaddingmonths:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)uDatebyaddingweeks:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)vDatebyaddingdays:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)VDatebyaddinghours:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)fDatebyaddingminutes:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)wDatebyaddingseconds:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)DStringwithformat:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)yStringwithformatTTimezoneFLocale:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)CstringWithISOFormat:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)EDatewithstringLFormat:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ODatewithstringNFormattTimezoneeLocale:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)xDatewithisoformatstring:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
