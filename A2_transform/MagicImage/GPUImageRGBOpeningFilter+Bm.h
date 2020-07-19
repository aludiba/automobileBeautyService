#import "GPUImageFilterGroup.h"
#import "GPUImageRGBOpeningFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"

@interface GPUImageRGBOpeningFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBm:(NSInteger)BM;

@end
