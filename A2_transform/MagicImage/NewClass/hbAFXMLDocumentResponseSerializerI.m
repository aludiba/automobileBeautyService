#import "hbAFXMLDocumentResponseSerializerI.h"
@implementation hbAFXMLDocumentResponseSerializerI
+ (BOOL)rSerializerbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)bSerializerwithxmldocumentoptionsbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)yInitbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)DResponseobjectforresponsedataerrorbm:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)nInitwithcoderbm:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)LEncodewithcoderbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)LCopywithzonebm:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
