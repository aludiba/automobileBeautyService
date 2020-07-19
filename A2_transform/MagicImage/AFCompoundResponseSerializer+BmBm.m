#import "AFCompoundResponseSerializer+BmBm.h"
@implementation AFCompoundResponseSerializer (BmBm)
+ (BOOL)compoundSerializerWithResponseSerializersBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)supportsSecureCodingBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
