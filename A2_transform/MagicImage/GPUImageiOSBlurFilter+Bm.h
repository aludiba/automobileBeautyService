#import "GPUImageFilterGroup.h"
#import "GPUImageiOSBlurFilter.h"
#import "GPUImageSaturationFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageLuminanceRangeFilter.h"

@interface GPUImageiOSBlurFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)setSaturationBm:(NSInteger)BM;
+ (BOOL)saturationBm:(NSInteger)BM;
+ (BOOL)setDownsamplingBm:(NSInteger)BM;
+ (BOOL)setRangeReductionFactorBm:(NSInteger)BM;
+ (BOOL)rangeReductionFactorBm:(NSInteger)BM;

@end
