#import "RACThreeTuple+Bm.h"
@implementation RACThreeTuple (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)initWithBackingArrayBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)tupleByAddingObjectBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)packFirstSecondBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
