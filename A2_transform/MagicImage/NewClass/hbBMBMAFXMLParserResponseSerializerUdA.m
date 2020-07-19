#import "hbBMBMAFXMLParserResponseSerializerUdA.h"
@implementation hbBMBMAFXMLParserResponseSerializerUdA
+ (BOOL)fWfserializerbm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)SJjinitbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)mZiresponseobjectforresponseedatalerrorbm:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
