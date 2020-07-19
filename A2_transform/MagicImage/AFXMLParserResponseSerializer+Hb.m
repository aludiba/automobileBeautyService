#import "AFXMLParserResponseSerializer+Hb.h"
@implementation AFXMLParserResponseSerializer (Hb)
+ (BOOL)serializerHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
