#import "BMBMGPUImageSingleComponentGaussianBlurFilterjs.h"
@implementation BMBMGPUImageSingleComponentGaussianBlurFilterjs
+ (BOOL)OWvertexshaderforoptimizedblurofradiushsigmabm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)lVfragmentshaderforoptimizedblurofradiushsigmabm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
