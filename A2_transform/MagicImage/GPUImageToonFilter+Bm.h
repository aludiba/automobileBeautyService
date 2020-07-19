#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"

@interface GPUImageToonFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setThresholdBm:(NSInteger)BM;
+ (BOOL)setQuantizationLevelsBm:(NSInteger)BM;

@end
