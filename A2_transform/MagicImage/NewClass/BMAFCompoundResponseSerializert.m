#import "BMAFCompoundResponseSerializert.h"
@implementation BMAFCompoundResponseSerializert
+ (BOOL)jCompoundserializerwithresponseserializersbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)eResponseobjectforresponsedataerrorbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)DSupportssecurecodingbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)cInitwithcoderbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)qEncodewithcoderbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)kCopywithzonebm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
