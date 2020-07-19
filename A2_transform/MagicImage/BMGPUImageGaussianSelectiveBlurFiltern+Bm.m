#import "BMGPUImageGaussianSelectiveBlurFilterN+Bm.h"
@implementation BMGPUImageGaussianSelectiveBlurFilterN (Bm)
+ (BOOL)jInitbmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)hSetinputsizeatindexbmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)hSetblurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)UBlurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ASetexcludecirclepointbmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)qSetexcludecircleradiusbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)DSetexcludeblursizebmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)ESetaspectratiobmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
