#import "BMAFXMLParserResponseSerializerU+BmBm.h"
@implementation BMAFXMLParserResponseSerializerU (BmBm)
+ (BOOL)FserializerBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)JinitBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)iResponseobjectforresponseEDataLErrorBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
