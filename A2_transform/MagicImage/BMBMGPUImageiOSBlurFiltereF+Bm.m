#import "BMBMGPUImageiOSBlurFiltereF+Bm.h"
@implementation BMBMGPUImageiOSBlurFiltereF (Bm)
+ (BOOL)LVinitBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)jDsetinputsizeuatindexBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)KMsetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)KTblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)NZsetsaturationBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)uSsaturationBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)LQsetdownsamplingBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)PXsetrangereductionfactorBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)iMrangereductionfactorBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
