#import "BMYYClassInfoa+Bm.h"
@implementation BMYYClassInfoa (Bm)
+ (BOOL)hInitwithclassBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)r_updateBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)zsetNeedUpdateBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)aneedUpdateBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)YClassinfowithclassBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)EClassinfowithclassnameBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
