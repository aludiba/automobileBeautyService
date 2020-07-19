#import "BMUIVieww.h"
@implementation BMUIVieww
+ (BOOL)WSetxbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)pSetybm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)tXbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)nYbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)NSetcenterxbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)vCenterxbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)NSetcenterybm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)QCenterybm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)YSetwidthbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)GSetheightbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)YHeightbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)zWidthbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)USetsizebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)oSizebm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)CSetoriginbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)fOriginbm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
