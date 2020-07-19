#import "BMBMGPUImageSmoothToonFilterLs.h"
@implementation BMBMGPUImageSmoothToonFilterLs
+ (BOOL)lPinit:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)gCsetblurradiusinpixels:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)DTblurradiusinpixels:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)HZsettexelwidth:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)cNtexelwidth:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)XQsettexelheight:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)KDtexelheight:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)qMsetthreshold:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)rUthreshold:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)VOsetquantizationlevels:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)RJquantizationlevels:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
