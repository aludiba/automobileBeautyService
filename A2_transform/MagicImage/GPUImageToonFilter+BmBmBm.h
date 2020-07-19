#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageToonFilter+Bm.h"
#import "GPUImageToonFilter+BmBm.h"

@interface GPUImageToonFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBmBm:(NSInteger)BM;
+ (BOOL)setQuantizationLevelsBmBmBm:(NSInteger)BM;

@end
