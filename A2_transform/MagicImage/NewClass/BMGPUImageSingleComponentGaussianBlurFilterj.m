#import "BMGPUImageSingleComponentGaussianBlurFilterj.h"
@implementation BMGPUImageSingleComponentGaussianBlurFilterj
+ (BOOL)wVertexshaderforoptimizedblurofradiushSigma:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)vFragmentshaderforoptimizedblurofradiusHSigma:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
