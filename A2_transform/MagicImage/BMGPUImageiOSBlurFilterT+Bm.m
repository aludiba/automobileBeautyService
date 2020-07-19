#import "BMGPUImageiOSBlurFilterT+Bm.h"
@implementation BMGPUImageiOSBlurFilterT (Bm)
+ (BOOL)JinitBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)fSetinputsizeRAtindexBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)QSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)jblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mSetsaturationBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)csaturationBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)KSetdownsamplingBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)lSetrangereductionfactorBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)trangeReductionFactorBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
