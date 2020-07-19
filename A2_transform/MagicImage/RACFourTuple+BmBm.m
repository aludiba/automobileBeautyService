#import "RACFourTuple+BmBm.h"
@implementation RACFourTuple (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)initWithBackingArrayBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)tupleByAddingObjectBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)packFirstSecondThirdBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
