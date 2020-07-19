#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter+Hb.h"
#import "GPUImageSingleComponentGaussianBlurFilter+HbHb.h"

@interface GPUImageSingleComponentGaussianBlurFilter (HbHbHb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHbHbHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHbHbHb:(NSInteger)hb;

@end
