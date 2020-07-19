#import "GPUImageFilterGroup.h"
#import "GPUImageRGBOpeningFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageRGBOpeningFilter+Bm.h"

@interface GPUImageRGBOpeningFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM;

@end
