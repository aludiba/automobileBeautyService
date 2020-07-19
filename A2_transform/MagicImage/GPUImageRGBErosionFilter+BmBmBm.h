#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageRGBErosionFilter+Bm.h"
#import "GPUImageRGBErosionFilter+BmBm.h"

@interface GPUImageRGBErosionFilter (BmBmBm)
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
