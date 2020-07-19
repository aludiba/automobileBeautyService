#import "BMBMGPUImageSmoothToonFilterSK.h"
@implementation BMBMGPUImageSmoothToonFilterSK
+ (BOOL)lEinitbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)RTsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)QWblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)NUsettexelwidthbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)wOtexelwidthbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)FOsettexelheightbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)wWtexelheightbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)TOsetthresholdbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)JZthresholdbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)iTsetquantizationlevelsbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)SWquantizationlevelsbm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
