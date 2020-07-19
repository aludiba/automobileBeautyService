#import "AFJSONResponseSerializer+Hb.h"
@implementation AFJSONResponseSerializer (Hb)
+ (BOOL)serializerHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)serializerWithReadingOptionsHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)supportsSecureCodingHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)copyWithZoneHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
