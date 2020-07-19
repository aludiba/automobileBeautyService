#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageRGBDilationFilter (Bm)
+ (BOOL)initWithRadiusBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;

@end
