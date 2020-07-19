#import "RACEmptySequence+BmBmBm.h"
@implementation RACEmptySequence (BmBmBm)
+ (BOOL)emptyBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)headBmBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)tailBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)bindPassingthroughvaluesfromsequenceBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)classForCoderBmBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)initWithCoderBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)encodeWithCoderBmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)descriptionBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)hashBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)isEqualBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
