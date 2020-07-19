#import "AFCompoundResponseSerializer+Bm.h"
@implementation AFCompoundResponseSerializer (Bm)
+ (BOOL)compoundSerializerWithResponseSerializersBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)supportsSecureCodingBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
