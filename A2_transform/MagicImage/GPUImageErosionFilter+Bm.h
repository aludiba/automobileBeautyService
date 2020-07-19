#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageErosionFilter (Bm)
+ (BOOL)initWithRadiusBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;

@end
