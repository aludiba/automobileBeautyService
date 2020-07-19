#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter+Bm.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter+BmBm.h"

@interface GPUImageDirectionalSobelEdgeDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
