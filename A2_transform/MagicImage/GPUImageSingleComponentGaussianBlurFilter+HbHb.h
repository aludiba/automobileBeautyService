#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter+Hb.h"

@interface GPUImageSingleComponentGaussianBlurFilter (HbHb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHbHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHbHb:(NSInteger)hb;

@end
