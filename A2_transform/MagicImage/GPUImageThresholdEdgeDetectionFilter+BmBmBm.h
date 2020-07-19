#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"
#import "GPUImageThresholdEdgeDetectionFilter+Bm.h"
#import "GPUImageThresholdEdgeDetectionFilter+BmBm.h"

@interface GPUImageThresholdEdgeDetectionFilter (BmBmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBmBm:(NSInteger)BM;

@end
