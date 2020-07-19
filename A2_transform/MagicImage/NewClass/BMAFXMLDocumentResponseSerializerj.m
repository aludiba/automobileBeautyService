#import "BMAFXMLDocumentResponseSerializerj.h"
@implementation BMAFXMLDocumentResponseSerializerj
+ (BOOL)bSerializerbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)vSerializerwithxmldocumentoptionsbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)UInitbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)cResponseobjectforresponsedataerrorbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)HInitwithcoderbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)IEncodewithcoderbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)MCopywithzonebm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
