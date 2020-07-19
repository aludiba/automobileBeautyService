#import "BMYYClassInfog+Bm.h"
@implementation BMYYClassInfog (Bm)
+ (BOOL)LInitwithclassBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)G_updateBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)dsetNeedUpdateBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)cneedUpdateBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)CClassinfowithclassBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)VClassinfowithclassnameBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
