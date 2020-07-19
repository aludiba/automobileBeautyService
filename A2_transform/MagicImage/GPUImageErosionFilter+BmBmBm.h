#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageErosionFilter+Bm.h"
#import "GPUImageErosionFilter+BmBm.h"

@interface GPUImageErosionFilter (BmBmBm)
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
