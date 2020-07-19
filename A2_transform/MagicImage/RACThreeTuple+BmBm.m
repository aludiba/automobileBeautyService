#import "RACThreeTuple+BmBm.h"
@implementation RACThreeTuple (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)initWithBackingArrayBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)tupleByAddingObjectBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)packFirstSecondBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
