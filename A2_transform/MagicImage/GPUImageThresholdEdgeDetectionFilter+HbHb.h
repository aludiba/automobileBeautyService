#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"
#import "GPUImageThresholdEdgeDetectionFilter+Hb.h"

@interface GPUImageThresholdEdgeDetectionFilter (HbHb)
+ (BOOL)initWithFragmentShaderFromStringHbHb:(NSInteger)hb;
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setThresholdHbHb:(NSInteger)hb;

@end
