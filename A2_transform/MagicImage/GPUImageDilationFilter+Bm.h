#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageDilationFilter (Bm)
+ (BOOL)initWithRadiusBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;

@end
