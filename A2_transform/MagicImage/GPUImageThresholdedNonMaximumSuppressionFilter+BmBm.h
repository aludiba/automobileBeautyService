#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter+Bm.h"

@interface GPUImageThresholdedNonMaximumSuppressionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithPackedColorspaceBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBm:(NSInteger)BM;

@end
