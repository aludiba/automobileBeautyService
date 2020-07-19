#import "BMBMAFXMLParserResponseSerializerUd+Bm.h"
@implementation BMBMAFXMLParserResponseSerializerUd (Bm)
+ (BOOL)wFserializerBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)jJinitBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)ZIresponseobjectforresponseedatalerrorBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
