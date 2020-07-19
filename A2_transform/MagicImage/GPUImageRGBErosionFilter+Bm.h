#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageRGBErosionFilter (Bm)
+ (BOOL)initWithRadiusBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;

@end
