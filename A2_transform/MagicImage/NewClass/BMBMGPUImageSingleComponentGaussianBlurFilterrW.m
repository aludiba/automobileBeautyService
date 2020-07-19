#import "BMBMGPUImageSingleComponentGaussianBlurFilterrW.h"
@implementation BMBMGPUImageSingleComponentGaussianBlurFilterrW
+ (BOOL)bEvertexshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)aEfragmentshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
