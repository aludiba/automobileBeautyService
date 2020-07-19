#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageErosionFilter (Hb)
+ (BOOL)initWithRadiusHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;

@end
