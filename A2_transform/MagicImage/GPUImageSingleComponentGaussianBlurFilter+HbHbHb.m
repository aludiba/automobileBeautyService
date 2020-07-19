#import "GPUImageSingleComponentGaussianBlurFilter+HbHbHb.h"
@implementation GPUImageSingleComponentGaussianBlurFilter (HbHbHb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHbHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHbHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
