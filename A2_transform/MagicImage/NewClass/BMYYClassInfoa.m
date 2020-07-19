#import "BMYYClassInfoa.h"
@implementation BMYYClassInfoa
+ (BOOL)hInitwithclass:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)r_update:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)zsetNeedUpdate:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)aneedUpdate:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)YClassinfowithclass:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)EClassinfowithclassname:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
