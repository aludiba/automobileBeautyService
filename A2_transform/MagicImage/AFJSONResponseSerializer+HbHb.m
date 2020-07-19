#import "AFJSONResponseSerializer+HbHb.h"
@implementation AFJSONResponseSerializer (HbHb)
+ (BOOL)serializerHbHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)serializerWithReadingOptionsHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorHbHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)supportsSecureCodingHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)initWithCoderHbHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)encodeWithCoderHbHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)copyWithZoneHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
