#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter+Bm.h"

@interface GPUImageSingleComponentGaussianBlurFilter (BmBm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM;

@end
