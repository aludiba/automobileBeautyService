#import "BMGPUImageSingleComponentGaussianBlurFilterM.h"
@implementation BMGPUImageSingleComponentGaussianBlurFilterM
+ (BOOL)jVertexshaderforoptimizedblurofradiusTSigma:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)RFragmentshaderforoptimizedblurofradiusrSigma:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
