#import "RACFourTuple+Bm.h"
@implementation RACFourTuple (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)initWithBackingArrayBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)tupleByAddingObjectBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)packFirstSecondThirdBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
