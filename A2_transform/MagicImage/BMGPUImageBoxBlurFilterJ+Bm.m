#import "BMGPUImageBoxBlurFilterJ+Bm.h"
@implementation BMGPUImageBoxBlurFilterJ (Bm)
+ (BOOL)VVertexshaderforoptimizedblurofradiussigmabmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)gFragmentshaderforoptimizedblurofradiussigmabmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)WSetupfilterforsizebmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)GInitbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)USetblurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
