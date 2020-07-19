#import "AFHTTPResponseSerializer+Bm.h"
@implementation AFHTTPResponseSerializer (Bm)
+ (BOOL)serializerBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)validateResponseDataErrorBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)supportsSecureCodingBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
