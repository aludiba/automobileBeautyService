#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"

@interface GPUImageThresholdedNonMaximumSuppressionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithPackedColorspaceHb:(NSInteger)hb;
+ (BOOL)setThresholdHb:(NSInteger)hb;

@end
