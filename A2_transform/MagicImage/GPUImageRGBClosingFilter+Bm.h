#import "GPUImageFilterGroup.h"
#import "GPUImageRGBClosingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"

@interface GPUImageRGBClosingFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBm:(NSInteger)BM;

@end
