#import "BMGPUImageSmoothToonFilters.h"
@implementation BMGPUImageSmoothToonFilters
+ (BOOL)bInitbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)fSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)XBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)QSettexelwidthbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)bTexelwidthbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)USettexelheightbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)gTexelheightbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)hSetthresholdbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)jThresholdbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)DSetquantizationlevelsbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)PQuantizationlevelsbm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
