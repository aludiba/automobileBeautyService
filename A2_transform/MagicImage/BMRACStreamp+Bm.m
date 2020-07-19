#import "BMRACStreamp+Bm.h"
@implementation BMRACStreamp (Bm)
+ (BOOL)QFlattenmapBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)bflattenBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)EMapBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)RMapreplaceBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)bCombinepreviouswithstartKReduceBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)BFilterBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)kIgnoreBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)jReduceeachBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)BStartwithBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)sSkipBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)sTakeBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)xJoinqBlockBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)RZipBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)AZipMReduceBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)jConcatBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)oScanwithstartBReduceBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)pScanwithstartxReducewithindexBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)vTakeuntilblockBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mTakewhileblockBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)aSkipuntilblockBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)pSkipwhileblockBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)YdistinctUntilChangedBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
