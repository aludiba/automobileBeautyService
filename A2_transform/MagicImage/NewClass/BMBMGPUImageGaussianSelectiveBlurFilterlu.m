#import "BMBMGPUImageGaussianSelectiveBlurFilterlu.h"
@implementation BMBMGPUImageGaussianSelectiveBlurFilterlu
+ (BOOL)fUinitbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)fKsetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)pFsetblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)JFblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)gIsetexcludecirclepointbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)cZsetexcludecircleradiusbmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)gRsetexcludeblursizebmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)QCsetaspectratiobmbm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
