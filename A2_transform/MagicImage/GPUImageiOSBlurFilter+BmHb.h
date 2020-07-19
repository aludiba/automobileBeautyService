#import "GPUImageFilterGroup.h"
#import "GPUImageiOSBlurFilter.h"
#import "GPUImageSaturationFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageLuminanceRangeFilter.h"
#import "GPUImageiOSBlurFilter+Bm.h"

@interface GPUImageiOSBlurFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmHb:(NSInteger)hb;
+ (BOOL)setSaturationBmHb:(NSInteger)hb;
+ (BOOL)saturationBmHb:(NSInteger)hb;
+ (BOOL)setDownsamplingBmHb:(NSInteger)hb;
+ (BOOL)setRangeReductionFactorBmHb:(NSInteger)hb;
+ (BOOL)rangeReductionFactorBmHb:(NSInteger)hb;

@end
