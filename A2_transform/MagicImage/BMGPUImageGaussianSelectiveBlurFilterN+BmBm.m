#import "BMGPUImageGaussianSelectiveBlurFilterN+BmBm.h"
@implementation BMGPUImageGaussianSelectiveBlurFilterN (BmBm)
+ (BOOL)jInitbmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)hSetinputsizeatindexbmBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)hSetblurradiusinpixelsbmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)UBlurradiusinpixelsbmBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ASetexcludecirclepointbmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)qSetexcludecircleradiusbmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)DSetexcludeblursizebmBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)ESetaspectratiobmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
