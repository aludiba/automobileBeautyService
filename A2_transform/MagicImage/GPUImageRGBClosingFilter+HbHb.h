#import "GPUImageFilterGroup.h"
#import "GPUImageRGBClosingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageRGBClosingFilter+Hb.h"

@interface GPUImageRGBClosingFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb;

@end
