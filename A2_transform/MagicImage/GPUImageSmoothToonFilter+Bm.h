#import "GPUImageFilterGroup.h"
#import "GPUImageSmoothToonFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageToonFilter.h"

@interface GPUImageSmoothToonFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBm:(NSInteger)BM;
+ (BOOL)texelWidthBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBm:(NSInteger)BM;
+ (BOOL)texelHeightBm:(NSInteger)BM;
+ (BOOL)setThresholdBm:(NSInteger)BM;
+ (BOOL)thresholdBm:(NSInteger)BM;
+ (BOOL)setQuantizationLevelsBm:(NSInteger)BM;
+ (BOOL)quantizationLevelsBm:(NSInteger)BM;

@end
