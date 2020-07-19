#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"

@interface GPUImageSingleComponentGaussianBlurFilter (Bm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM;

@end
