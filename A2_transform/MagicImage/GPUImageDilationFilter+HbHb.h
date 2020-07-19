#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageDilationFilter+Hb.h"

@interface GPUImageDilationFilter (HbHb)
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb;
+ (BOOL)initHbHb:(NSInteger)hb;

@end
