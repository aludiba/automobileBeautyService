#import "GPUImageSingleComponentGaussianBlurFilter+BmBm.h"
@implementation GPUImageSingleComponentGaussianBlurFilter (BmBm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
