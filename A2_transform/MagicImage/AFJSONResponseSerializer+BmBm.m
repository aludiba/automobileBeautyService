#import "AFJSONResponseSerializer+BmBm.h"
@implementation AFJSONResponseSerializer (BmBm)
+ (BOOL)serializerBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)serializerWithReadingOptionsBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)supportsSecureCodingBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
