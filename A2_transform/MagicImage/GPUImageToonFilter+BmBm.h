#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageToonFilter+Bm.h"

@interface GPUImageToonFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBm:(NSInteger)BM;
+ (BOOL)setQuantizationLevelsBmBm:(NSInteger)BM;

@end
