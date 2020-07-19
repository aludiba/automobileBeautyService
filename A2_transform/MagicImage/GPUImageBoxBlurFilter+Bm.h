#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBoxBlurFilter.h"

@interface GPUImageBoxBlurFilter (Bm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;

@end
