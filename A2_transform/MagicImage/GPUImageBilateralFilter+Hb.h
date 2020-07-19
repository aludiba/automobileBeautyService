#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBilateralFilter.h"

@interface GPUImageBilateralFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setDistanceNormalizationFactorHb:(NSInteger)hb;

@end
