#import "BMGPUImageSingleComponentGaussianBlurFilterM+Bm.h"
@implementation BMGPUImageSingleComponentGaussianBlurFilterM (Bm)
+ (BOOL)jVertexshaderforoptimizedblurofradiusTSigmaBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)RFragmentshaderforoptimizedblurofradiusrSigmaBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
