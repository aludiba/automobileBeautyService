#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageRGBErosionFilter+Bm.h"
#import "GPUImageRGBErosionFilter+BmBm.h"

@interface GPUImageRGBErosionFilter (BmBmHb)
+ (BOOL)initWithRadiusBmBmHb:(NSInteger)hb;
+ (BOOL)initBmBmHb:(NSInteger)hb;

@end
