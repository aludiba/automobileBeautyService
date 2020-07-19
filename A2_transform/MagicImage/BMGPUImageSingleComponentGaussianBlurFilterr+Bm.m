#import "BMGPUImageSingleComponentGaussianBlurFilterr+Bm.h"
@implementation BMGPUImageSingleComponentGaussianBlurFilterr (Bm)
+ (BOOL)eVertexshaderforoptimizedblurofradiussigmabmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)EFragmentshaderforoptimizedblurofradiussigmabmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
