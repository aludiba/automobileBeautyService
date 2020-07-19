#import "AFXMLDocumentResponseSerializer+Bm.h"
@implementation AFXMLDocumentResponseSerializer (Bm)
+ (BOOL)serializerBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)serializerWithXMLDocumentOptionsBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
