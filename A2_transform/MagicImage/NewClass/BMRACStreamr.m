#import "BMRACStreamr.h"
@implementation BMRACStreamr
+ (BOOL)QFlattenmapbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)aFlattenbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)tMapbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)bMapreplacebm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)hCombinepreviouswithstartreducebm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)LFilterbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)ZIgnorebm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)wReduceeachbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)QStartwithbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)PSkipbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)qTakebm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)UJoinblockbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)VZipbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)XZipreducebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)WConcatbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)OScanwithstartreducebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)OScanwithstartreducewithindexbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)ETakeuntilblockbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)cTakewhileblockbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)tSkipuntilblockbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)hSkipwhileblockbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)CDistinctuntilchangedbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
