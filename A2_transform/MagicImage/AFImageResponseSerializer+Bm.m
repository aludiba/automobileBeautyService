#import "AFImageResponseSerializer+Bm.h"
@implementation AFImageResponseSerializer (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)supportsSecureCodingBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
