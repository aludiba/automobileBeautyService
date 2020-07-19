#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBilateralFilter.h"
#import "GPUImageBilateralFilter+Bm.h"

@interface GPUImageBilateralFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setDistanceNormalizationFactorBmBm:(NSInteger)BM;

@end
