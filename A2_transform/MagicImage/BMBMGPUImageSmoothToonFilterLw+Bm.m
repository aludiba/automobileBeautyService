#import "BMBMGPUImageSmoothToonFilterLw+Bm.h"
@implementation BMBMGPUImageSmoothToonFilterLw (Bm)
+ (BOOL)FPinitBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)pCsetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)rTblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)VZsettexelwidthBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)DNtexelwidthBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)CQsettexelheightBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)fDtexelheightBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)YMsetthresholdBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)EUthresholdBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)pOsetquantizationlevelsBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)CJquantizationlevelsBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
