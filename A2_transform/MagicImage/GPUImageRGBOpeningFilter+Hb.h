#import "GPUImageFilterGroup.h"
#import "GPUImageRGBOpeningFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"

@interface GPUImageRGBOpeningFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithRadiusHb:(NSInteger)hb;

@end
