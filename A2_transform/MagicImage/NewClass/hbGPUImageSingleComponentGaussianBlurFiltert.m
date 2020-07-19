#import "hbGPUImageSingleComponentGaussianBlurFiltert.h"
@implementation hbGPUImageSingleComponentGaussianBlurFiltert
+ (BOOL)hVertexshaderforoptimizedblurofradiussigmahb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)oFragmentshaderforoptimizedblurofradiussigmahb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
