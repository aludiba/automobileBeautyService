#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"
#import "GPUImageThresholdEdgeDetectionFilter+Bm.h"

@interface GPUImageThresholdEdgeDetectionFilter (BmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBm:(NSInteger)BM;

@end
