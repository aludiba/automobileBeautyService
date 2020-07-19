#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageToonFilter+Bm.h"
#import "GPUImageToonFilter+BmBm.h"

@interface GPUImageToonFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setThresholdBmBmHb:(NSInteger)hb;
+ (BOOL)setQuantizationLevelsBmBmHb:(NSInteger)hb;

@end
