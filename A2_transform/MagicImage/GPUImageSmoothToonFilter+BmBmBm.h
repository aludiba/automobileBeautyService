#import "GPUImageFilterGroup.h"
#import "GPUImageSmoothToonFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSmoothToonFilter+Bm.h"
#import "GPUImageSmoothToonFilter+BmBm.h"

@interface GPUImageSmoothToonFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM;
+ (BOOL)texelWidthBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM;
+ (BOOL)texelHeightBmBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBmBm:(NSInteger)BM;
+ (BOOL)thresholdBmBmBm:(NSInteger)BM;
+ (BOOL)setQuantizationLevelsBmBmBm:(NSInteger)BM;
+ (BOOL)quantizationLevelsBmBmBm:(NSInteger)BM;

@end
