#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter+Bm.h"
#import "GPUImageSingleComponentGaussianBlurFilter+BmBm.h"

@interface GPUImageSingleComponentGaussianBlurFilter (BmBmHb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb;

@end
