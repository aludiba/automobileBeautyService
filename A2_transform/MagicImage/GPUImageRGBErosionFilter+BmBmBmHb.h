#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageRGBErosionFilter+Bm.h"
#import "GPUImageRGBErosionFilter+BmBm.h"
#import "GPUImageRGBErosionFilter+BmBmBm.h"

@interface GPUImageRGBErosionFilter (BmBmBmHb)
+ (BOOL)initWithRadiusBmBmBmHb:(NSInteger)hb;
+ (BOOL)initBmBmBmHb:(NSInteger)hb;

@end
