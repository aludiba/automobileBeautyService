#import "BMAFXMLParserResponseSerializerc.h"
@implementation BMAFXMLParserResponseSerializerc
+ (BOOL)LSerializerbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)gInitbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)bResponseobjectforresponsedataerrorbm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
