#import "BMBMGPUImageiOSBlurFilteruD.h"
@implementation BMBMGPUImageiOSBlurFilteruD
+ (BOOL)cKinitbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)dWsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)WTsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)mWblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)DSsetsaturationbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)nDsaturationbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)wUsetdownsamplingbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)QSsetrangereductionfactorbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)vUrangereductionfactorbm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
