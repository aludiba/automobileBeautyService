#import "BMBMNSDatePX+Bm.h"
@implementation BMBMNSDatePX (Bm)
+ (BOOL)UZyearBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)JSmonthBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)cQdayBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)nJhourBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)YRminuteBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)ODsecondBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)IHnanosecondBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)XXweekdayBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)aYweekdayordinalBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)oBweekofmonthBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)TUweekofyearBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)IVyearforweekofyearBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)jDquarterBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)YPisleapmonthBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)YCisleapyearBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)IWistodayBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)TDisyesterdayBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)yXdatebyaddingyearsBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)fDdatebyaddingmonthsBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)wJdatebyaddingweeksBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)DQdatebyaddingdaysBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)FGdatebyaddinghoursBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)qKdatebyaddingminutesBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)NKdatebyaddingsecondsBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)aZstringwithformatBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)hKstringwithformatmtimezonejlocaleBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)SKstringwithisoformatBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)BWdatewithstringyformatBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)yRdatewithstringeformatctimezonealocaleBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)rUdatewithisoformatstringBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
