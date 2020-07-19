#import "AFCompoundResponseSerializer+Hb.h"
@implementation AFCompoundResponseSerializer (Hb)
+ (BOOL)compoundSerializerWithResponseSerializersHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)supportsSecureCodingHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)copyWithZoneHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
