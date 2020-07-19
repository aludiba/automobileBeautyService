#import "AFPropertyListResponseSerializer+BmBm.h"
@implementation AFPropertyListResponseSerializer (BmBm)
+ (BOOL)serializerBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)serializerWithFormatReadoptionsBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)supportsSecureCodingBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
