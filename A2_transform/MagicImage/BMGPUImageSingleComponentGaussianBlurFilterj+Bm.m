#import "BMGPUImageSingleComponentGaussianBlurFilterj+Bm.h"
@implementation BMGPUImageSingleComponentGaussianBlurFilterj (Bm)
+ (BOOL)wVertexshaderforoptimizedblurofradiushSigmaBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)vFragmentshaderforoptimizedblurofradiusHSigmaBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
