#import "GPUImageFilterGroup.h"
#import "GPUImageSmoothToonFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSmoothToonFilter+Bm.h"

@interface GPUImageSmoothToonFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM;
+ (BOOL)texelWidthBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM;
+ (BOOL)texelHeightBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBm:(NSInteger)BM;
+ (BOOL)thresholdBmBm:(NSInteger)BM;
+ (BOOL)setQuantizationLevelsBmBm:(NSInteger)BM;
+ (BOOL)quantizationLevelsBmBm:(NSInteger)BM;

@end
