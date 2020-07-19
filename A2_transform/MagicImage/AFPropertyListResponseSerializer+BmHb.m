#import "AFPropertyListResponseSerializer+BmHb.h"
@implementation AFPropertyListResponseSerializer (BmHb)
+ (BOOL)serializerBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)serializerWithFormatReadoptionsBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)supportsSecureCodingBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)initWithCoderBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)encodeWithCoderBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)copyWithZoneBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
