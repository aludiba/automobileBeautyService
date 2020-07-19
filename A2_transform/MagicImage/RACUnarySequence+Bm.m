#import "RACUnarySequence+Bm.h"
@implementation RACUnarySequence (Bm)
+ (BOOL)returnBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)tailBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)bindBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)classForCoderBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)hashBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
