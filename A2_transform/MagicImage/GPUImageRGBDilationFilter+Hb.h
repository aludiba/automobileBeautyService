#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageRGBDilationFilter (Hb)
+ (BOOL)initWithRadiusHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;

@end
