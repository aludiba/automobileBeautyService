#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageErosionFilter+Bm.h"

@interface GPUImageErosionFilter (BmBm)
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;

@end
