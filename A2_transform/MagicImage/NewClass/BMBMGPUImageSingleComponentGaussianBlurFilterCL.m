#import "BMBMGPUImageSingleComponentGaussianBlurFilterCL.h"
@implementation BMBMGPUImageSingleComponentGaussianBlurFilterCL
+ (BOOL)RDvertexshaderforoptimizedblurofradiussigmabmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)TPfragmentshaderforoptimizedblurofradiussigmabmbm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
