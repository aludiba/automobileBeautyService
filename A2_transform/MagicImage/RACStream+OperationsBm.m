#import "RACStream+OperationsBm.h"
@implementation RACStream (OperationsBm)
+ (BOOL)flattenMapBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)flattenBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)mapBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)mapReplaceBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)combinePreviousWithStartReduceBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)filterBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)ignoreBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)reduceEachBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)startWithBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)skipBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)takeBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)joinBlockBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)zipBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)zipReduceBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)concatBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)scanWithStartReduceBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)scanWithStartReducewithindexBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)takeUntilBlockBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)takeWhileBlockBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)skipUntilBlockBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)skipWhileBlockBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)distinctUntilChangedBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
