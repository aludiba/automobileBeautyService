#import "AFXMLDocumentResponseSerializer+BmBm.h"
@implementation AFXMLDocumentResponseSerializer (BmBm)
+ (BOOL)serializerBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)serializerWithXMLDocumentOptionsBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
