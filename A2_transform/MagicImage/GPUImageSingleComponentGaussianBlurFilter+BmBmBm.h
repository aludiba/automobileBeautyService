#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter+Bm.h"
#import "GPUImageSingleComponentGaussianBlurFilter+BmBm.h"

@interface GPUImageSingleComponentGaussianBlurFilter (BmBmBm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM;

@end
