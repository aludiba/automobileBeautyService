#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageNonMaximumSuppressionFilter.h"
#import "GPUImageNonMaximumSuppressionFilter+Bm.h"

@interface GPUImageNonMaximumSuppressionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
