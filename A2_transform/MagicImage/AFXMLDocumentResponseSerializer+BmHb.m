#import "AFXMLDocumentResponseSerializer+BmHb.h"
@implementation AFXMLDocumentResponseSerializer (BmHb)
+ (BOOL)serializerBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)serializerWithXMLDocumentOptionsBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)initWithCoderBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)encodeWithCoderBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)copyWithZoneBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
