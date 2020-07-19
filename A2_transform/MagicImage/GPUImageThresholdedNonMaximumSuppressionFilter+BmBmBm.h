#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter+Bm.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter+BmBm.h"

@interface GPUImageThresholdedNonMaximumSuppressionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithPackedColorspaceBmBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBmBm:(NSInteger)BM;

@end
