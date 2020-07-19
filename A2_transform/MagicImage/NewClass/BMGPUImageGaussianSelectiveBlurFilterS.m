#import "BMGPUImageGaussianSelectiveBlurFilterS.h"
@implementation BMGPUImageGaussianSelectiveBlurFilterS
+ (BOOL)FInitbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)qSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)ASetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)dBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)vSetexcludecirclepointbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)hSetexcludecircleradiusbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)oSetexcludeblursizebm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)HSetaspectratiobm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
