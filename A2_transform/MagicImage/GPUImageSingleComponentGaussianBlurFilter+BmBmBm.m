#import "GPUImageSingleComponentGaussianBlurFilter+BmBmBm.h"
@implementation GPUImageSingleComponentGaussianBlurFilter (BmBmBm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
