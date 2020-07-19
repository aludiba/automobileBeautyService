#import "GPUImageSingleComponentGaussianBlurFilter+HbHb.h"
@implementation GPUImageSingleComponentGaussianBlurFilter (HbHb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHbHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHbHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
