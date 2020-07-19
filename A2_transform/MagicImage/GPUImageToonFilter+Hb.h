#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"

@interface GPUImageToonFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setThresholdHb:(NSInteger)hb;
+ (BOOL)setQuantizationLevelsHb:(NSInteger)hb;

@end
