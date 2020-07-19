#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageRGBErosionFilter (Hb)
+ (BOOL)initWithRadiusHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;

@end
