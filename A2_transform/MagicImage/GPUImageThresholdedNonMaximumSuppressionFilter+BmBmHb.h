#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter+Bm.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter+BmBm.h"

@interface GPUImageThresholdedNonMaximumSuppressionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)initWithPackedColorspaceBmBmHb:(NSInteger)hb;
+ (BOOL)setThresholdBmBmHb:(NSInteger)hb;

@end
