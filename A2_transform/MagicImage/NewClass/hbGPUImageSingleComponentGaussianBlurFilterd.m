#import "hbGPUImageSingleComponentGaussianBlurFilterd.h"
@implementation hbGPUImageSingleComponentGaussianBlurFilterd
+ (BOOL)UVertexshaderforoptimizedblurofradiussigmahb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)zFragmentshaderforoptimizedblurofradiussigmahb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
