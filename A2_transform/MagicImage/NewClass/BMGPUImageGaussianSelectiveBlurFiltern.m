#import "BMGPUImageGaussianSelectiveBlurFilterN.h"
@implementation BMGPUImageGaussianSelectiveBlurFilterN
+ (BOOL)jInitbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)hSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)hSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)UBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ASetexcludecirclepointbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)qSetexcludecircleradiusbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)DSetexcludeblursizebm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ESetaspectratiobm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
