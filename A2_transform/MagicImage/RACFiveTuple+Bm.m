#import "RACFiveTuple+Bm.h"
@implementation RACFiveTuple (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)initWithBackingArrayBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)packFirstSecondThirdFourthBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
