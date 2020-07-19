#import "AFXMLParserResponseSerializer+BmBm.h"
@implementation AFXMLParserResponseSerializer (BmBm)
+ (BOOL)serializerBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
