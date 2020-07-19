#import "GPUImageFilterGroup.h"
#import "GPUImageRGBOpeningFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageRGBOpeningFilter+Hb.h"

@interface GPUImageRGBOpeningFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb;

@end
