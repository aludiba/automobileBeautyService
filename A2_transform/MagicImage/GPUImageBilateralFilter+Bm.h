#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBilateralFilter.h"

@interface GPUImageBilateralFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setDistanceNormalizationFactorBm:(NSInteger)BM;

@end
