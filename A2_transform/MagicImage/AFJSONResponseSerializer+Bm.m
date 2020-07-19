#import "AFJSONResponseSerializer+Bm.h"
@implementation AFJSONResponseSerializer (Bm)
+ (BOOL)serializerBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)serializerWithReadingOptionsBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)supportsSecureCodingBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
