#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBoxBlurFilter.h"
#import "GPUImageBoxBlurFilter+Bm.h"

@interface GPUImageBoxBlurFilter (BmBm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM;

@end
