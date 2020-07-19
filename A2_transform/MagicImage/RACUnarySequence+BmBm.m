#import "RACUnarySequence+BmBm.h"
@implementation RACUnarySequence (BmBm)
+ (BOOL)returnBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)tailBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)bindBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)classForCoderBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)hashBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
