#import "BMBMGPUImageiOSBlurFilterfo.h"
@implementation BMBMGPUImageiOSBlurFilterfo
+ (BOOL)pTinitbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)wRsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)YRsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)ZLblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)hHsetsaturationbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)hDsaturationbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)QZsetdownsamplingbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)LVsetrangereductionfactorbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)nWrangereductionfactorbm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
