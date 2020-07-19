#import "hbRACEagerSequenceV.h"
@implementation hbRACEagerSequenceV
+ (BOOL)GReturnbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)CBindbm:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)SConcatbm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)uEagersequencebm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)NLazysequencebm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)CFoldrightwithstartreducebm:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
