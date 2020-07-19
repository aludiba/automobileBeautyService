#import "GPUImageFilterGroup.h"
#import "GPUImageRGBClosingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"

@interface GPUImageRGBClosingFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithRadiusHb:(NSInteger)hb;

@end
