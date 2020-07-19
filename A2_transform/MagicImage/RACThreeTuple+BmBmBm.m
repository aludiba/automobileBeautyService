#import "RACThreeTuple+BmBmBm.h"
@implementation RACThreeTuple (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)initWithBackingArrayBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)tupleByAddingObjectBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)packFirstSecondBmBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)isEqualBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
