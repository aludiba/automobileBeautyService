#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"

@interface GPUImageThresholdedNonMaximumSuppressionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithPackedColorspaceBm:(NSInteger)BM;
+ (BOOL)setThresholdBm:(NSInteger)BM;

@end
