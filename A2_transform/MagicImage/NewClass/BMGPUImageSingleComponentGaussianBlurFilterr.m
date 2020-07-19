#import "BMGPUImageSingleComponentGaussianBlurFilterr.h"
@implementation BMGPUImageSingleComponentGaussianBlurFilterr
+ (BOOL)eVertexshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)EFragmentshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
