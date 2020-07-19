#import "AFImageResponseSerializer+BmBm.h"
@implementation AFImageResponseSerializer (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)supportsSecureCodingBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
