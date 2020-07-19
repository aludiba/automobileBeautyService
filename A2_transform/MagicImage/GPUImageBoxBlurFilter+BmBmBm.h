#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBoxBlurFilter.h"
#import "GPUImageBoxBlurFilter+Bm.h"
#import "GPUImageBoxBlurFilter+BmBm.h"

@interface GPUImageBoxBlurFilter (BmBmBm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;

@end
