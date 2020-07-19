#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageRGBDilationFilter+Bm.h"

@interface GPUImageRGBDilationFilter (BmBm)
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;

@end
