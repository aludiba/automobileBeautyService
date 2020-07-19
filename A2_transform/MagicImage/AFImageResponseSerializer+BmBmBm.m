#import "AFImageResponseSerializer+BmBmBm.h"
@implementation AFImageResponseSerializer (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)supportsSecureCodingBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)initWithCoderBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)encodeWithCoderBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)copyWithZoneBmBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
