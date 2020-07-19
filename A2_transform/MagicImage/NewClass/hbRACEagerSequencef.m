#import "hbRACEagerSequenceF.h"
@implementation hbRACEagerSequenceF
+ (BOOL)DReturnbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)EBindbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)RConcatbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)cEagersequencebm:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)qLazysequencebm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)TFoldrightwithstartreducebm:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
