#import "RACFiveTuple+BmBm.h"
@implementation RACFiveTuple (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)initWithBackingArrayBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)packFirstSecondThirdFourthBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
