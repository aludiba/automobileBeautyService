#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageRGBDilationFilter+Hb.h"

@interface GPUImageRGBDilationFilter (HbHb)
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb;
+ (BOOL)initHbHb:(NSInteger)hb;

@end
