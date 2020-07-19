#import "GPUImageSingleComponentGaussianBlurFilter+Bm.h"
@implementation GPUImageSingleComponentGaussianBlurFilter (Bm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
