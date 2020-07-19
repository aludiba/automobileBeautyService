#import "BMGPUImageiOSBlurFiltere+Bm.h"
@implementation BMGPUImageiOSBlurFiltere (Bm)
+ (BOOL)VinitBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)dSetinputsizeuAtindexBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)mSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)TblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)ZSetsaturationBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)ssaturationBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)qSetdownsamplingBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)XSetrangereductionfactorBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)mrangeReductionFactorBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
