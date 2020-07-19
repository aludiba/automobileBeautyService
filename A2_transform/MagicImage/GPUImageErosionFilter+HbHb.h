#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageErosionFilter+Hb.h"

@interface GPUImageErosionFilter (HbHb)
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb;
+ (BOOL)initHbHb:(NSInteger)hb;

@end
