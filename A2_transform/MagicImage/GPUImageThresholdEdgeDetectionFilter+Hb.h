#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"

@interface GPUImageThresholdEdgeDetectionFilter (Hb)
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setThresholdHb:(NSInteger)hb;

@end
