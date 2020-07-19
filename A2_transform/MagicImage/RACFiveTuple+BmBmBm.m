#import "RACFiveTuple+BmBmBm.h"
@implementation RACFiveTuple (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)initWithBackingArrayBmBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)packFirstSecondThirdFourthBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)isEqualBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
