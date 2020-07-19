#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBilateralFilter.h"
#import "GPUImageBilateralFilter+Bm.h"
#import "GPUImageBilateralFilter+BmBm.h"

@interface GPUImageBilateralFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setDistanceNormalizationFactorBmBmBm:(NSInteger)BM;

@end
