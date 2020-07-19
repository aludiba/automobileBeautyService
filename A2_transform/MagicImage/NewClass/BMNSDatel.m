#import "BMNSDatel.h"
@implementation BMNSDatel
+ (BOOL)ZYearbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)UMonthbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)cDaybm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)BHourbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)xMinutebm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)oSecondbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)GNanosecondbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)rWeekdaybm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)DWeekdayordinalbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)eWeekofmonthbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)LWeekofyearbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)aYearforweekofyearbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)BQuarterbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)XIsleapmonthbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)PIsleapyearbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)rIstodaybm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)hIsyesterdaybm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)FDatebyaddingyearsbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)kDatebyaddingmonthsbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)hDatebyaddingweeksbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)cDatebyaddingdaysbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)vDatebyaddinghoursbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)vDatebyaddingminutesbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)sDatebyaddingsecondsbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)PStringwithformatbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)CStringwithformattimezonelocalebm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)jStringwithisoformatbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)hDatewithstringformatbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)YDatewithstringformattimezonelocalebm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)WDatewithisoformatstringbm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
