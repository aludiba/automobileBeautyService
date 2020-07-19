#import "AFCompoundResponseSerializer+BmHb.h"
@implementation AFCompoundResponseSerializer (BmHb)
+ (BOOL)compoundSerializerWithResponseSerializersBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)supportsSecureCodingBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)initWithCoderBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)encodeWithCoderBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)copyWithZoneBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
