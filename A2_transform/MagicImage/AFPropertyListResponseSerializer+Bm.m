#import "AFPropertyListResponseSerializer+Bm.h"
@implementation AFPropertyListResponseSerializer (Bm)
+ (BOOL)serializerBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)serializerWithFormatReadoptionsBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)supportsSecureCodingBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
