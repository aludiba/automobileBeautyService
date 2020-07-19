#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageRGBErosionFilter+Bm.h"

@interface GPUImageRGBErosionFilter (BmBm)
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;

@end
