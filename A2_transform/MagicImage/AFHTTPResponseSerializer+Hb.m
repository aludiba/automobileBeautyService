#import "AFHTTPResponseSerializer+Hb.h"
@implementation AFHTTPResponseSerializer (Hb)
+ (BOOL)serializerHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)validateResponseDataErrorHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)supportsSecureCodingHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)copyWithZoneHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
