#import "RACEmptySequence+BmBm.h"
@implementation RACEmptySequence (BmBm)
+ (BOOL)emptyBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)headBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)tailBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)bindPassingthroughvaluesfromsequenceBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)classForCoderBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)hashBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
