#import "BMAFImageResponseSerializerF.h"
@implementation BMAFImageResponseSerializerF
+ (BOOL)UInitbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)rResponseobjectforresponsedataerrorbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)WSupportssecurecodingbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)FInitwithcoderbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)zEncodewithcoderbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)WCopywithzonebm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
