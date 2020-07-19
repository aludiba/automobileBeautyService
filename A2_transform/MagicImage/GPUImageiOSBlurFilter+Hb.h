#import "GPUImageFilterGroup.h"
#import "GPUImageiOSBlurFilter.h"
#import "GPUImageSaturationFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageLuminanceRangeFilter.h"

@interface GPUImageiOSBlurFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)setSaturationHb:(NSInteger)hb;
+ (BOOL)saturationHb:(NSInteger)hb;
+ (BOOL)setDownsamplingHb:(NSInteger)hb;
+ (BOOL)setRangeReductionFactorHb:(NSInteger)hb;
+ (BOOL)rangeReductionFactorHb:(NSInteger)hb;

@end
