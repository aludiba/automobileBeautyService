#import "AFXMLDocumentResponseSerializer+Hb.h"
@implementation AFXMLDocumentResponseSerializer (Hb)
+ (BOOL)serializerHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)serializerWithXMLDocumentOptionsHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)copyWithZoneHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
