#import "GPUImageSingleComponentGaussianBlurFilter+Hb.h"
@implementation GPUImageSingleComponentGaussianBlurFilter (Hb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
