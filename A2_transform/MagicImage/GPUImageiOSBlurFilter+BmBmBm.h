#import "GPUImageFilterGroup.h"
#import "GPUImageiOSBlurFilter.h"
#import "GPUImageSaturationFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageLuminanceRangeFilter.h"
#import "GPUImageiOSBlurFilter+Bm.h"
#import "GPUImageiOSBlurFilter+BmBm.h"

@interface GPUImageiOSBlurFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)setSaturationBmBmBm:(NSInteger)BM;
+ (BOOL)saturationBmBmBm:(NSInteger)BM;
+ (BOOL)setDownsamplingBmBmBm:(NSInteger)BM;
+ (BOOL)setRangeReductionFactorBmBmBm:(NSInteger)BM;
+ (BOOL)rangeReductionFactorBmBmBm:(NSInteger)BM;

@end
