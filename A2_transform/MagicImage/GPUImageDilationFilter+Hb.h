#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageDilationFilter (Hb)
+ (BOOL)initWithRadiusHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;

@end
