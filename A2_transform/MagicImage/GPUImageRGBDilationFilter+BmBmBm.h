#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageRGBDilationFilter+Bm.h"
#import "GPUImageRGBDilationFilter+BmBm.h"

@interface GPUImageRGBDilationFilter (BmBmBm)
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
