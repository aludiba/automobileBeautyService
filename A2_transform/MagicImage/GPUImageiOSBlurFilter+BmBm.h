#import "GPUImageFilterGroup.h"
#import "GPUImageiOSBlurFilter.h"
#import "GPUImageSaturationFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageLuminanceRangeFilter.h"
#import "GPUImageiOSBlurFilter+Bm.h"

@interface GPUImageiOSBlurFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)setSaturationBmBm:(NSInteger)BM;
+ (BOOL)saturationBmBm:(NSInteger)BM;
+ (BOOL)setDownsamplingBmBm:(NSInteger)BM;
+ (BOOL)setRangeReductionFactorBmBm:(NSInteger)BM;
+ (BOOL)rangeReductionFactorBmBm:(NSInteger)BM;

@end
