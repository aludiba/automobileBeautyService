#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageDilationFilter+Bm.h"

@interface GPUImageDilationFilter (BmBm)
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;

@end
