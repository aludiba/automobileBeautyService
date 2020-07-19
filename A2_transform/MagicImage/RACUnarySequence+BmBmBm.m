#import "RACUnarySequence+BmBmBm.h"
@implementation RACUnarySequence (BmBmBm)
+ (BOOL)returnBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)tailBmBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)bindBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)classForCoderBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)initWithCoderBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)encodeWithCoderBmBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)descriptionBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)hashBmBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)isEqualBmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
