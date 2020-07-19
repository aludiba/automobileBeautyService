#import "BMBMNSStringtr.h"
@implementation BMBMNSStringtr
+ (BOOL)zXunderlinefromcamel:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)xWcamelfromunderline:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)NAfirstcharlower:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)qJfirstcharupper:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)QFispureint:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)RHurl:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
