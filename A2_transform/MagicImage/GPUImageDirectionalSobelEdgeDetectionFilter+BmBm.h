#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter+Bm.h"

@interface GPUImageDirectionalSobelEdgeDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
