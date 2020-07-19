#import "RACEmptySequence+Bm.h"
@implementation RACEmptySequence (Bm)
+ (BOOL)emptyBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)headBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)tailBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)bindPassingthroughvaluesfromsequenceBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)classForCoderBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)hashBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
