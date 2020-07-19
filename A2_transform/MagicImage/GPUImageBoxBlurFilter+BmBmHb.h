#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBoxBlurFilter.h"
#import "GPUImageBoxBlurFilter+Bm.h"
#import "GPUImageBoxBlurFilter+BmBm.h"

@interface GPUImageBoxBlurFilter (BmBmHb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeBmBmHb:(NSInteger)hb;
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb;

@end
