#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"

@interface GPUImageSingleComponentGaussianBlurFilter (Hb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb;

@end
