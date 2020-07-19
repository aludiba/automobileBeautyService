#import "BMBMGPUImageSmoothToonFilterLw.h"
@implementation BMBMGPUImageSmoothToonFilterLw
+ (BOOL)FPinit:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)pCsetblurradiusinpixels:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)rTblurradiusinpixels:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)VZsettexelwidth:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)DNtexelwidth:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)CQsettexelheight:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)fDtexelheight:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)YMsetthreshold:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)EUthreshold:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)pOsetquantizationlevels:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)CJquantizationlevels:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
