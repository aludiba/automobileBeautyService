#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBilateralFilter.h"
#import "GPUImageBilateralFilter+Hb.h"

@interface GPUImageBilateralFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setDistanceNormalizationFactorHbHb:(NSInteger)hb;

@end
