#import "AFXMLParserResponseSerializer+Bm.h"
@implementation AFXMLParserResponseSerializer (Bm)
+ (BOOL)serializerBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
