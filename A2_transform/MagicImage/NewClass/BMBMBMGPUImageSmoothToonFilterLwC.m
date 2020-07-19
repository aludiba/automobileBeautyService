#import "BMBMBMGPUImageSmoothToonFilterLwC.h"
@implementation BMBMBMGPUImageSmoothToonFilterLwC
+ (BOOL)sFpinit:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)OPcsetblurradiusinpixels:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)tRtblurradiusinpixels:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)nVzsettexelwidth:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)VDntexelwidth:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)bCqsettexelheight:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)iFdtexelheight:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)QYmsetthreshold:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)eEuthreshold:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)dPosetquantizationlevels:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)zCjquantizationlevels:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
