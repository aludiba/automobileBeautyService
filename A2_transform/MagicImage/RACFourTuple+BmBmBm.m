#import "RACFourTuple+BmBmBm.h"
@implementation RACFourTuple (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)initWithBackingArrayBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)tupleByAddingObjectBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)packFirstSecondThirdBmBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)isEqualBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
