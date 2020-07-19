#import "GPUImageSingleComponentGaussianBlurFilter+BmBmHb.h"
@implementation GPUImageSingleComponentGaussianBlurFilter (BmBmHb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
