#import "AFImageResponseSerializer+Hb.h"
@implementation AFImageResponseSerializer (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)supportsSecureCodingHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)copyWithZoneHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
