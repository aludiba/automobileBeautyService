#import "BMGPUImageSingleComponentGaussianBlurFilterC.h"
@implementation BMGPUImageSingleComponentGaussianBlurFilterC
+ (BOOL)FVertexshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)KFragmentshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
