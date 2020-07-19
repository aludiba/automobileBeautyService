#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"

@interface GPUImageThresholdEdgeDetectionFilter (Bm)
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setThresholdBm:(NSInteger)BM;

@end
